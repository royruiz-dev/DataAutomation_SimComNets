import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.Router;
import inet.node.inet.StandardHost;
import ned.DatarateChannel;

import inet.applications.udpapp.UdpBasicApp;

simple VoIPApp extends UdpBasicApp
{
    parameters:
        //max acceptable 'end-to-end' delay in VoIP application
        double acceptableDelay @unit(s) = default(0.2s);

        @class(VoIPApp);
}

network Exercise7
{
    parameters:
        // used to alternate between ISDN and DSL as configs in the INI file
        double dataRate @unit(Mbps);

        int numUsersPerAccRouter = default(25); // number of users per access router (max = 25)
        int numBBrouterPerGateway = default(5); // number of backbone routers per gateway (max = 5)
        int numAroutersPerBBRouter = default(5); // number of access routers per backbone router (max = 5)

    types:
        channel GatewayServer extends DatarateChannel
        {
            delay = default(0s);
            datarate = default(100Mbps);
        }
        channel BackboneGateway extends DatarateChannel
        {
            datarate = default(10 Mbps); // bit rate for gateway
            delay = default(10 ms); // fixed propagation delay for gateway
        }
        channel BackboneAccess extends DatarateChannel
        {
            datarate = default(2 Mbps); // bit rate for backbone router
            delay = default(15 ms); // fixed propagation delay for backbone router
        }
        channel AccessUser extends DatarateChannel
        {
            datarate = dataRate; // bit rate for access router
            delay = default(40 ms); // fixed propagation delay for access router
        }

    submodules:
        server: StandardHost {
            @display("p=40,155;i=device/server");
        }
        gatewayRouter: Router {
            @display("p=162,117;i=device/router");
        }
        backboneRouter[numBBrouterPerGateway]: Router {
            @display("p=288,197;i=device/smallrouter");
        }
        accessRouter[numAroutersPerBBRouter*numBBrouterPerGateway]: Router {
            @display("p=533,79;i=device/accesspoint");
        }
        user[numUsersPerAccRouter*numAroutersPerBBRouter*numBBrouterPerGateway]: StandardHost {
            @display("p=675,219;i=block/users");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=327,44;is=s");
        }

    connections:
        server.pppg++ <--> GatewayServer <--> gatewayRouter.pppg++; // server to gateway connection
        for i=0..numBBrouterPerGateway-1 {
            backboneRouter[i].pppg++ <--> BackboneGateway <--> gatewayRouter.pppg++; // backbone to gateway connection
        }

        for i=0..numBBrouterPerGateway-1, for j=0..numAroutersPerBBRouter-1 {
            backboneRouter[i].pppg++ <--> BackboneAccess <--> accessRouter[i*numAroutersPerBBRouter + j].pppg++; // backbone to access connection
        }

        for i=0..(numBBrouterPerGateway*numAroutersPerBBRouter)-1, for j=0..numUsersPerAccRouter-1 {
            accessRouter[i].pppg++ <--> AccessUser <--> user[i*numUsersPerAccRouter + j].pppg++; // access to user connection
        }
}
