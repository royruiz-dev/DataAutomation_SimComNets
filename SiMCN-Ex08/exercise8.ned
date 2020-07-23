
import inet.networklayer.configurator.ipv4.Ipv4FlatNetworkConfigurator;
import inet.node.inet.Router;
import inet.node.inet.StandardHost;
import inet.node.inet.WirelessHost;
import inet.node.wireless.AccessPoint;
import inet.physicallayer.common.packetlevel.RadioMedium;
import ned.DatarateChannel;

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
        radioMedium: RadioMedium {
            @display("p=213,237");
        }
        ipv4FlatNetworkConfigurator: Ipv4FlatNetworkConfigurator {
            @display("p=64,79");
        }
    connections allowunconnected:
        Server.pppg++ <--> ISPServer <--> ISPRouter.pppg++;
        ISPRouter.pppg$o++ --> ISPDSL --> DSLRouter.pppg$i++;
        DSLRouter.pppg$o++ --> DSLISP --> ISPRouter.pppg$i++;
        DSLRouter.pppg++ <--> AccessPointDSL <--> AccessPoint.ethg++;
}

