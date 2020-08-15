
#include <stdio.h>  // NEW
#include <string.h> // NEW
#include <omnetpp.h>
#include "inet/applications/udpapp/UdpBasicApp.h"


using namespace omnetpp;
using namespace inet;

class VideoConfApp : public inet::UdpBasicApp {
public:
    double acceptableDelay;
    double packetLossRate;
    double delaySum;   // NEW
    double avg_E2E_Delay;

    int totalLostPackets;
    int numLatePackets;

    cOutVector endToEndDelayVector; // NEW

protected:
    virtual void initialize(int stage) override;
    virtual void sendPacket() override;
    virtual void processPacket(Packet *pk) override;
    virtual void finish() override;
};

Define_Module(VideoConfApp);

void VideoConfApp::initialize(int stage) {
    UdpBasicApp::initialize(stage);
    acceptableDelay = par("acceptableDelay");
    packetLossRate = 0.0;
    delaySum = 0.0;    // NEW
    avg_E2E_Delay = 0.0;


    totalLostPackets = 0;
    numLatePackets = 0;
    if (stage == 1) {
    endToEndDelayVector.setName("[VC] End-to-End Delay");
    }
}

void VideoConfApp::sendPacket() {
        UdpBasicApp::sendPacket();
}

void VideoConfApp::processPacket(Packet *pk) {
    simtime_t actualDelay = simTime() - pk->getCreationTime();
    delaySum += actualDelay.dbl();  // NEW

    EV << "Time between packet generation and time in application of receiver: " << actualDelay << endl;

    endToEndDelayVector.record(actualDelay);  // NEW

    if (actualDelay.dbl() > acceptableDelay) {
        numLatePackets++;
        EV << "Packet is late. Its 'end-to-end' delay is " << actualDelay << endl;
        EV << "Total Number of packets that arrived past max acceptable delay is " << numLatePackets << endl;

        delete pk;
    }
    else {
        UdpBasicApp::processPacket(pk);
    }
}

void VideoConfApp::finish() {
    totalLostPackets = this->numSent - this->numReceived - numLatePackets;
    packetLossRate = (static_cast<double>(this->numSent) - static_cast<double>(this->numReceived)) / static_cast<double>(this->numSent);
    avg_E2E_Delay = delaySum / (this->numReceived + numLatePackets);

    recordScalar("[VC] Total SENT Packets", this->numSent);
    recordScalar("[VC] Total RCVD Packets", this->numReceived);
    recordScalar("[VC] Total LOST Packets", totalLostPackets);
    recordScalar("[VC] Total LATE Packets", numLatePackets);
    recordScalar("[VC] AVG PK LOSS Rate", packetLossRate);

    recordScalar("[VC] Avg End-to-End Delay", avg_E2E_Delay);

    UdpBasicApp::finish();
}
