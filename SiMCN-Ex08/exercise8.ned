
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.Router;
import inet.node.inet.StandardHost;
import inet.node.inet.WirelessHost;
import inet.node.wireless.AccessPoint;
//import inet.physicallayer.common.packetlevel.RadioMedium;
import ned.DatarateChannel;
import inet.physicallayer.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;
import inet.mobility.static.StationaryMobility;
//
// TODO documentation
//
network Exercise8
{
    parameters:
        double downlink @unit(Mbps);
        double uplink @unit(Mbps);
        //int FTP_Clients;

    types:
        channel ISPServer extends DatarateChannel
        {
            datarate = default(100Mbps);
        }
        channel ISPDSL extends DatarateChannel
        {
            datarate = default(100 Mbps);
        }
        channel DSLISP extends DatarateChannel
        {
            datarate = default(40 Mbps);
        }
        channel AccessPointDSL extends DatarateChannel
        {
            datarate = default(100 Mbps);
        }

    submodules:
        ISPRouter: Router {
            @display("p=684,236");
        }
        DSLRouter: Router {
            @display("p=477,236");
        }
        Server: StandardHost {
            @display("p=853,236;i=device/server");
        }
        AccessPoint: AccessPoint {
            @display("p=326,237");
            //wlan[*].mgmt.typename = "Ieee80211MgmtStaSimplified";
            //wlan[*].agent.typename = "";
        }
        Client: WirelessHost {
            @display("p=256,137");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=848,70");
        }
        radioMedium: Ieee80211ScalarRadioMedium {
            @display("p=192,235");
            //backgroundNoise.power = default(-110dBm);
        }
    connections allowunconnected:
        Server.ethg++ <--> ISPServer <--> ISPRouter.ethg++;
        ISPRouter.pppg$o++ --> ISPDSL --> DSLRouter.pppg$i++;
        ISPRouter.pppg$i++ <-- DSLISP <-- DSLRouter.pppg$o++;
        DSLRouter.ethg++ <--> AccessPointDSL <--> AccessPoint.ethg++;
}

