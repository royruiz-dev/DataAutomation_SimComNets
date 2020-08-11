/*
 * VideoConfApp.cc
 *
 *  Created on: Jul 28, 2020
 *      Author: royruiz
 */

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
    //double delay;   // NEW

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
    //delay = 0.0;    // NEW

    totalLostPackets = 0;
    numLatePackets = 0;
}

void VideoConfApp::sendPacket() {
        UdpBasicApp::sendPacket();
}

void VideoConfApp::processPacket(Packet *pk) {
    simtime_t actualDelay = simTime() - pk->getCreationTime();
    //delay = actualDelay.dbl();  // NEW

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
    totalLostPackets = this->numSent - this->numReceived;
    packetLossRate = static_cast<double>(totalLostPackets) / static_cast<double>(this->numSent);

    recordScalar("[VC] Total SENT Packets", this->numSent);
    recordScalar("[VC] Total RCVD Packets", this->numReceived);
    recordScalar("[VC] Total LOST Packets", totalLostPackets);
    recordScalar("[VC] Total LATE Packets", numLatePackets);
    recordScalar("[VC] AVG PK LOSS Rate", packetLossRate);

    endToEndDelayVector.setName("[VC] End-to-End Delay");

    UdpBasicApp::finish();
}
