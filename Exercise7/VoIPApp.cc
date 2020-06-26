#include "inet/applications/udpapp/UdpBasicApp.h"


using namespace inet;



class VoIPApp: public UdpBasicApp
{
public:
simtime_t sendtime;
simtime_t recvtime;
simtime_t delay;
double pkt_loss=0;
double numofsent=0;
double numofrcv=0;
VoIPApp();
virtual ~VoIPApp();

protected:
  virtual void socketDataArrived(UdpSocket *socket, Packet *packet) override;
  virtual void finish() override;

};

Define_Module(VoIPApp);

VoIPApp::VoIPApp()
{};
VoIPApp::~VoIPApp()
{};


void VoIPApp::socketDataArrived(UdpSocket *socket, Packet *packet)
{
    sendtime= packet->getCreationTime();
    EV<< "sendtime ********************************************************************************************"<<sendtime<<"\n";
    recvtime = simTime();
    delay = recvtime-sendtime;
    EV<< "delay    ***********************************************************************************************"<< delay <<"\n";

    if (delay<=0.2)
    {
        EV<< "Packet is Processed "<<"\n";
        // process incoming packet
        processPacket(packet);
    }
    else
    {
        EV<< "Packet Deleted "<<"\n";
        delete packet;
    }
}

void VoIPApp::finish()
{
    numofsent=numSent;
    numofrcv=numReceived;
    pkt_loss= ((numofsent-numofrcv)/numofsent)*100;
    recordScalar("packets sent", numSent);
    recordScalar("packets received", numReceived);
    recordScalar("packet loss rate", pkt_loss );
    ApplicationBase::finish();

}

