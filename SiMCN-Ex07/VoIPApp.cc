/*
 * VoIPApp.cc
 *
 *  Created on: Jun 18, 2020
 *      Author: royruiz
 */

#include <omnetpp.h>
#include "inet/applications/udpapp/UdpBasicApp.h"

using namespace omnetpp;
using namespace inet;

class VoIPApp : public inet::UdpBasicApp {
public:
    double acceptableDelay;
    double packetLossRate;

    int numLostPackets;
    int numSentPackets;
    int numReceivedPackets;
    simtime_t timePacketSent;

protected:
    virtual void initialize(int stage) override;
    virtual void sendPacket() override;
    virtual void processPacket(Packet *pk) override;
    virtual void finish() override;
};

Define_Module(VoIPApp);

void VoIPApp::initialize(int stage) {
    UdpBasicApp::initialize(stage);
    acceptableDelay = par("acceptableDelay");
    packetLossRate = 0;

    numLostPackets = 0;
    numSentPackets = 0;
    numReceivedPackets = 0;
}

void VoIPApp::sendPacket() {
    //std::ostringstream payload;
    //payload << "VoIPApp" << "-" << numSentPackets;

    timePacketSent = simTime();
    UdpBasicApp::sendPacket();

    //Packet *packet = new Packet(payload.str().c_str());
    //Packet *packet = new cPacket(payload);
    //const auto& packet = makeShared<ApplicationPacket>();
    //packet->setChunkLength(B(par("messageLength")));

    //L3Address destAddr = chooseDestAddr();
    //emit(packetSentSignal, packet);
    //socket.sendTo(packet, destAddr, destPort);

    numSentPackets++;
}

void VoIPApp::processPacket(Packet *pk) {
    simtime_t timePacketReceived = simTime();
    simtime_t duration = timePacketReceived - timePacketSent;

    emit(packetReceivedSignal, pk);
    //EV_INFO << "Received packet: " << UdpSocket::getReceivedPacketInfo(pk) << endl;
    delete pk;
    if (duration > acceptableDelay) {
        numLostPackets++;
    }
    numReceivedPackets++;
}

void VoIPApp::finish() {
    packetLossRate = ((double)numLostPackets) / ((double)numSentPackets);
    recordScalar("Average Loss Rate", packetLossRate);
    recordScalar("Packets Lost", numLostPackets);
    recordScalar("Packets Sent", numSentPackets);
    recordScalar("Packets Received", numReceivedPackets);
    UdpBasicApp::finish();
}
