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
        int numUsers; // number of users in the network
        int numBBrouter; // number of backbone routers
        int numArouters; //
        @display("bgb=755.99994,315");
    types:
        channel Server extends IdealChannel
        {
        }
        channel Gateway extends DatarateChannel
        {
            datarate = default(10 Mbps); // bit rate for gateway
            delay = default(10 ms); // fixed propagation delay for gateway
        }
        channel Backbone extends DatarateChannel
        {
            datarate = default(2 Mbps); // bit rate for backbone router
            delay = default(15 ms); // fixed propagation delay for backbone router
        }
        channel Access extends DatarateChannel
        {
            datarate = dataRate; // bit rate for access router
            delay = default(40 ms); // fixed propagation delay for access router
        }

    submodules:
        backboneRouter[5]: Router {
            parameters:
                @display("p=317.625,155.75;i=device/pc3");
        }
        accessRouter[25]: Router {
            parameters:
                @display("p=475.99997,155.75;i=device/pc3");
        }
        user[625]: StandardHost {
            parameters:
                @display("p=650.125,155.75;i=device/pc2");
        }
        gatewayRouter: Router {
            parameters:
                @display("p=181.99998,155.75;i=device/pc3");
        }
        configurator: Ipv4NetworkConfigurator {
            parameters:
                @display("p=392,31;is=s");
        }

        server: StandardHost {
            @display("p=40.25,155.75");
        }
        
    connections:
        server.pppg++ <--> gatewayRouter.pppg++;
        for i=0..numBBrouter-1 {
            backboneRouter[i].pppg++ <--> Gateway <--> gatewayRouter.pppg++; // Two one-directional channels to achieve bi-directional link
        }
        for i=0..numArouters-1, for j=0..numUsers-1 {
            accessRouter[i].pppg++ <--> Access <--> user[j].pppg++;
        }
        for i=0..numBBrouter-1, for j=0..numArouters-1 {
            backboneRouter[i].pppg++ <--> Backbone <--> accessRouter[j].pppg++;
        }

}