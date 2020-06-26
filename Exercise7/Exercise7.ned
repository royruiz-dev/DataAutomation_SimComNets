


import inet.common.misc.ThruputMeter;
import inet.common.misc.ThruputMeteringChannel;
import inet.examples.ethernet.lans.SmallLAN;
import inet.examples.wireless.hosttohost.ThroughputServer;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.gpsr.GpsrRouter;
import inet.node.inet.Router;
import inet.node.inet.StandardHost;
import inet.node.internetcloud.InternetCloud;
import ned.DatarateChannel;
import inet.visualizer.integrated.IntegratedCanvasVisualizer;
import inet.applications.udpapp.UdpBasicApp;
simple VoIPApp extends UdpBasicApp
{
    @class(VoIPApp);
            // this means that we want to use our VoIPApp C++ class,
            // otherwise UDPBasicApp class would be used by default
}


network Exercise7
{
    parameters:
        int numClients = 25;
        int numAccessRouters = 5;
        int numBackboneRouters = 5;
        @display("bgb=799,401");
    submodules:
        configurator: Ipv4NetworkConfigurator {
            @display("p=14,17;is=s");
        }

        R_Gateway: Router {
            @display("p=398,104");
            hasTcp = true;
        }
        R_Backbone[numBackboneRouters]: Router {
            @display("p=398,188");
            hasTcp = true;
        }
        R_Access[numAccessRouters*numAccessRouters]: Router {
            @display("p=398,267");
            hasTcp = true;
        }
        Clients[numClients*numClients]: StandardHost {
            @display("p=398,361");
        }
        Internet: StandardHost {
            @display("p=398,25");
        }
        visualizer: IntegratedCanvasVisualizer {
            @display("p=22,64");
        }
    connections:


        R_Gateway.pppg++ <--> DatarateChannel {  delay = 2ms; datarate = 50000000bps; } <--> Internet.pppg++;


        for i=0..numBackboneRouters-1 {
            R_Gateway.pppg++ <--> DatarateChannel {  delay = 10ms; datarate = 10000000bps; } <--> R_Backbone[i].pppg++;
        }

        for i=0..numBackboneRouters-1, for j=0..numAccessRouters-1 {
            R_Backbone[i].pppg++ <--> DatarateChannel {  delay = 15ms; datarate = 2000000bps; } <--> R_Access[i*numAccessRouters +j].pppg++;
        }

        for i=0..(numAccessRouters*numBackboneRouters)-1, for j=0..numClients-1 {
            R_Access[i].pppg++ <--> DatarateChannel {  delay = 40ms; datarate = 64000bps; } <--> Clients[i*numClients +j].pppg++;
        }

}


