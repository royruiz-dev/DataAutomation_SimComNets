#include <omnetpp.h>
#include "inet/applications/udpapp/UdpBasicApp.h"


using namespace omnetpp;
using namespace inet;

class VoIPApp : public inet::UdpBasicApp {
public:
    double acceptableDelay;
    double packetLossRate;

    int totalLostPackets;
    int numLatePackets;

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
    packetLossRate = 0.0;

    totalLostPackets = 0;
    numLatePackets = 0;
}

void VoIPApp::sendPacket() {
    UdpBasicApp::sendPacket();
}

void VoIPApp::processPacket(Packet *pk) {
    simtime_t actualDelay = simTime() - pk->getCreationTime();

    EV << "Time between packet generation and time in application of receiver: " << actualDelay << endl;

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

void VoIPApp::finish() {
    totalLostPackets = this->numSent - this->numReceived;
    packetLossRate = static_cast<double>(totalLostPackets) / static_cast<double>(this->numSent);

    recordScalar("[VoIP] Total SENT Packets", this->numSent);
    recordScalar("[VoIP] Total RCVD Packets", this->numReceived);
    recordScalar("[VoIP] Total LOST Packets", totalLostPackets);
    recordScalar("[VoIP] Total LATE Packets", numLatePackets);
    recordScalar("[VoIP] AVG PK LOSS Rate", packetLossRate);

    UdpBasicApp::finish();
}
