
#include <stdio.h>
#include <string.h>
#include <omnetpp.h>
#include <math.h>
#include <stdint.h>

using namespace omnetpp;
using namespace std;

/* Since random number generation occurs from calling the distribution function from the NED file via omnetpp.ini,
 * the objective is to generate a pseudo random number generator (PRNG) with the Linear Congruential Generator (LCG)
 * method. This random number would be used when generating a value for the Uniform Distribution function. Finally,
 * with the continuous inverse transfer algorithm, a value can be generated for the Exponential Distribution function
 * using the Uniform Distribution function.
 */

// Linear Congruential Generator CLASS to calculate the pseudo random number based on formula from Exercise 3 task
class LinearCongruentialGenerator{
public:
    // constructor to pass initial seed value by reference to lastSeed variable
    LinearCongruentialGenerator (uint64_t seed) : lastSeed(seed){ }
    long generateRandNum(int multiplier, long int modulus) {
        lastSeed = (multiplier * lastSeed) % modulus;
        EV << "New Seed is: " << lastSeed << endl;
        return lastSeed;
    }
private:
    uint64_t lastSeed;   // unint64_t helps avoid overflow and OS independence
};

// Uniform CLASS to map the random number generated into a uniform distribution function (values from 0 ~ 1)
class Uniform {
public:
    // function to evaluate uniform distribution mapping of random number
    simtime_t UniformDistribution (int a, int b){
    randNum = LCG.generateRandNum(16807, (pow(2, 31) - 1));
    randNum = randNum / (pow(2, 31) - 1); // divide by modulus to get a value from 0,1
    EV << "Random Number: " << randNum << endl;
    return SimTime(((b - a) / 2) * randNum); // divide base: b - a by 2 since we're using U(0,2)
    }
private:
    // Instance created of class type to call constructor in LinearCongruentialGenerator class
    // Initializes by passing value to seed parameter --> seed_0
    LinearCongruentialGenerator LCG = LinearCongruentialGenerator(1);
   double randNum;
};

// Suppose we have a random variable X ~ U(0,2) and a CDF:  F(X) = 1 - e^(-X)
// Let X = F^-1(U)
// To get the inverse, we want to solve for F(F^-1(U)) = U
// 1 - e^(-F^-1(U)) = U
// 1 - U = e^(-F^-1(U))
// -ln(1 - U) = F^-1(U) --> log() in math.h library is the natural log
class Exponential {
public:
    // function to evaluate an exponentially-distributed value from a uniform distribution
    // This take a parameter mu (mean) which is passed where it's called in the program
    simtime_t ExponentialDistribution (double mu){
        // inverse transform algorithm
        return SimTime((-1 / mu) * log(1 - uni.UniformDistribution(0, 2).dbl()));
        }
private:
    Uniform uni; // Instance created of class type to call method from Uniform class
};


class Source3 : public cSimpleModule {
    private:
        cMessage *event;
        simtime_t interArrivalTime;
        Exponential exp; // Instance created of class type to call method from Exponential class

        int sendCounter;
        bool randLCG_flag; // flag used to determine whether to run LCG or Mersenne Twister RNG

    protected:
        virtual void initialize() override;
        virtual void handleMessage(cMessage *msg) override;
        virtual void done();
};

Define_Module(Source3);


void Source3::initialize() {
    event = new cMessage("event");

    randLCG_flag = par("enablePRNG");
    sendCounter = par("limit");

    WATCH(sendCounter);

    if (randLCG_flag == true){ interArrivalTime = exp.ExponentialDistribution(1.0); }
    else{ interArrivalTime = par("iATime"); }

    scheduleAt(simTime() + interArrivalTime, event);
}

void Source3::handleMessage(cMessage *msg) {

    if (sendCounter == 0) {
        done();
    }

    else {
        if (randLCG_flag == true){ interArrivalTime = exp.ExponentialDistribution(1.0); }
        else { interArrivalTime = par("iATime"); }

        sendCounter--;
        send(new cMessage("generatedMsg"), "out");
        scheduleAt(simTime() + interArrivalTime, msg);
    }
}

void Source3::done(){
    EV << "No more messages to send. Limit has been reached." << endl;
    cancelAndDelete(event);
}


class Destination3 : public cSimpleModule {
    private:
        double iAT;
        double iAT_sum;
        double newTime;

        cHistogram iAT_Stats;
        cOutVector iAT_Vector;

    protected:
        virtual void initialize() override;
        virtual void handleMessage(cMessage *msg) override;
        virtual void finish() override;
};

Define_Module(Destination3);

void Destination3::initialize() {
    iAT = 0.0;
    iAT_sum = 0.0;
    newTime = 0.0;

    iAT_Vector.setName("Inter Arrival Times");
}

void Destination3::handleMessage(cMessage *msg) {
    iAT = simTime().dbl() - newTime;
    iAT_sum = iAT_sum + iAT;
    newTime = simTime().dbl();
    EV << "Received message: " << msg->getName() << "\n";
    EV << "New inter arrival for last message is: " << iAT << " seconds.\n";
    EV << "Total inter arrival time is: " << iAT_sum << " seconds.\n";

    iAT_Vector.record(iAT);
    iAT_Stats.collect(iAT);

    delete msg;
}

void Destination3::finish() {
    EV << "Inter arrival time, min: " << iAT_Stats.getMin() << endl;
    EV << "Inter arrival time, max: " << iAT_Stats.getMax() << endl;
    EV << "Inter arrival time, mean: " << iAT_Stats.getMean() << endl;
    EV << "Inter arrival time, variance: " << iAT_Stats.getVariance() << endl;
    EV << "Inter arrival time, stddev: " << iAT_Stats.getStddev() << endl;

    iAT_Stats.recordAs("Inter Arrival Times");
}

