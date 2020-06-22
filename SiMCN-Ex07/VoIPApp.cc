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
    UdpBasicApp::sendPacket();
    numSentPackets++;
}

void VoIPApp::processPacket(Packet *pk) {
    simtime_t timePacketReceived = simTime();
    simtime_t duration = timePacketReceived - pk->getCreationTime();
    emit(packetReceivedSignal, pk);
    if (duration.dbl() > acceptableDelay) {
        numLostPackets++;
        EV << "Lost Packet hahahahas: " << numLostPackets;
    }
    numReceivedPackets++;
    delete pk;
}

void VoIPApp::finish() {
    double packetLossRate = ((double)numLostPackets) / ((double)numReceivedPackets);
    recordScalar("Average Loss Rate", packetLossRate);
    recordScalar("Packets Lost", numLostPackets);
    recordScalar("Packets Sent", numSentPackets);
    recordScalar("Packets Received", numReceivedPackets);
    UdpBasicApp::finish();
}
