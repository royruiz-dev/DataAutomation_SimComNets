/*
 * ex_2.cc
 *
 *  Created on: May 6, 2020
 *      Author: royruiz
 */

#include <stdio.h>
#include <string.h>
#include <omnetpp.h>

using namespace omnetpp;


class Source : public cSimpleModule {
    private:
        cMessage *event;
        int sendCounter;

    protected:
        virtual void initialize() override;
        virtual void handleMessage(cMessage *msg) override;
        virtual void done();
};

Define_Module(Source);

void Source::initialize() {
    event = new cMessage("event");
    sendCounter = par("limit");

    WATCH(sendCounter);

    simtime_t interArrivalTime = par("iATime");

    scheduleAt(simTime() + interArrivalTime, event);
}

void Source::handleMessage(cMessage *msg) {
    if (sendCounter == 0) {
        done();
    }

    else {
        sendCounter--;
        simtime_t interArrivalTime = par("iATime");

        send(new cMessage("generatedMsg"), "out");
        scheduleAt(simTime() + interArrivalTime, msg);
    }
}

void Source::done(){
    EV << "No more messages to send. Limit has been reached." << endl;
    cancelAndDelete(event);
}

class Destination : public cSimpleModule {
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

Define_Module(Destination);

void Destination::initialize() {
    iAT = 0.0;
    iAT_sum = 0.0;
    newTime = 0.0;
}

void Destination::handleMessage(cMessage *msg) {
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

void Destination::finish() {

    EV << "Inter arrival time, min: " << iAT_Stats.getMin() << endl;
    EV << "Inter arrival time, max: " << iAT_Stats.getMax() << endl;
    EV << "Inter arrival time, mean: " << iAT_Stats.getMean() << endl;
    EV << "Inter arrival time, variance: " << iAT_Stats.getVariance() << endl;
    EV << "Inter arrival time, stddev: " << iAT_Stats.getStddev() << endl;

    iAT_Stats.recordAs("Inter Arrival Times");

}
