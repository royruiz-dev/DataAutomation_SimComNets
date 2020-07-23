
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.Router;
import inet.node.inet.StandardHost;
import inet.node.inet.WirelessHost;
import inet.node.wireless.AccessPoint;
import inet.physicallayer.common.packetlevel.RadioMedium;
import ned.DatarateChannel;
import inet.physicallayer.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;
//
// TODO documentation
//
network Exercise8
{
    parameters:
        double downlink @unit(Mbps);
        double uplink @unit(Mbps);
        int FTP_Clients;

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
        }
        Client[FTP_Clients]: WirelessHost {
            @display("p=65,238");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=81,83");
        }
        radioMedium: RadioMedium {
            @display("p=192,235");
        }
    connections allowunconnected:
        Server.pppg++ <--> ISPServer <--> ISPRouter.pppg++;
        ISPRouter.pppg$o++ --> ISPDSL --> DSLRouter.pppg$i++;
        DSLRouter.pppg$o++ --> DSLISP --> ISPRouter.pppg$i++;
        DSLRouter.pppg++ <--> AccessPointDSL <--> AccessPoint.ethg++;
}

