import inet.common.misc.NetAnimTrace;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.Router;
import inet.node.inet.StandardHost;
import ned.DatarateChannel;
import ned.IdealChannel;


network Exercise7
{
    parameters:
        // used to alternate between ISDN and DSL as configs in the INI file
        volatile double dataRate @unit(Mbps);
        
        int numUsers = default(1); // number of users
        int numBBrouter = default(1); // number of backbone routers
        int numArouters = default(1); // number of access routers
        
    types:
        channel GatewayServer extends DatarateChannel {
            delay = default(0s);
            datarate = default(100Mbps);
        }
        channel BackboneGateway extends DatarateChannel {
            datarate = default(10 Mbps); // bit rate for gateway
            delay = default(10 ms); // fixed propagation delay for gateway
        }
        channel BackboneAccess extends DatarateChannel {
            datarate = default(2 Mbps); // bit rate for backbone router
            delay = default(15 ms); // fixed propagation delay for backbone router
        }
        channel AccessUser extends DatarateChannel {
            datarate = dataRate; // bit rate for access router
            delay = default(40 ms); // fixed propagation delay for access router
        }

    submodules:
        backboneRouter[numBBrouter]: Router {@display("p=280,155;i=device/smallrouter");}
        accessRouter[numArouters]: Router {@display("p=475,155;i=device/accesspoint");}
        user[numUsers]: StandardHost {@display("p=640,155;i=block/users");}
        gatewayRouter: Router {@display("p=120,155;i=device/router");}
        server: StandardHost {@display("p=40,155;i=device/server");}
        configurator: Ipv4NetworkConfigurator {@display("p=340,80;is=s");}

    connections:
        server.pppg++ <--> GatewayServer <--> gatewayRouter.pppg++; // server to gateway connection
        for i=0..numBBrouter-1 {
            backboneRouter[i].pppg++ <--> BackboneGateway <--> gatewayRouter.pppg++; // backbone to gateway connection
        }
        for i=0..numArouters-1, for j=0..numUsers-1 {
            accessRouter[i].pppg++ <--> AccessUser <--> user[j].pppg++; // access to user connection
        }
        for i=0..numBBrouter-1, for j=0..numArouters-1 {
            backboneRouter[i].pppg++ <--> BackboneAccess <--> accessRouter[j].pppg++; // backbone to access connection
        }

}
