//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
//

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.Router;
import inet.node.inet.StandardHost;
import inet.node.inet.WirelessHost;
import inet.node.wireless.AccessPoint;
import ned.DatarateChannel;
import inet.physicallayer.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;
import inet.mobility.static.StationaryMobility;
import inet.node.ethernet.Eth100M;
import inet.visualizer.contract.IIntegratedVisualizer;


import inet.applications.udpapp.UdpBasicApp;

simple VideoConfApp extends UdpBasicApp
{
    parameters:
        //max acceptable 'end-to-end' delay in Video Conference application
        double acceptableDelay @unit(s) = default(0.15s);

        @class(VideoConfApp);
}

network FinalTask
{
    parameters:
        int numClient = default(4); // number of HTTP clients for web browsing
        double upLinkADSL @unit(Mbps) = default(1Mbps);
        double downLinkADSL @unit(Mbps) = default(8Mbps);
        double upLinkVDSL @unit(Mbps) = default(40Mbps);
        double downLinkVDSL @unit(Mbps) = default(100Mbps);
        @display("bgb=2059.8374,686.6125");

    types:
        channel FTPServer_LRouter extends Eth100M // bi-directional
        {
        }
        channel VideoLecture_LRouter extends Eth100M // bi-directional
        {
        }
        channel LRouter_LISPRouter extends DatarateChannel // uni-directional
        {
            datarate = upLinkADSL; // ADSL Upstream Bandwidth
        }
        channel LISPRouter_LRouter extends DatarateChannel // uni-directional
        {
            datarate = downLinkADSL; // ADSL Downstream Bandwidth
        }
        channel LISPRouter_DISPRouter extends Eth100M // bi-directional
        {
            //datarate = default(100Mbps);
            length = 12000000m; // delay value = replaceUnit(length/2e8,"s") = 0.06s
        }
        channel HTTPServer_DISPRouter extends Eth100M // bi-directional
        {
            //datarate = default(100Mbps);
            length = 12000000m; // delay value = replaceUnit(length/2e8,"s") = 0.06s
        }
        channel DISPRouter_DRouter extends DatarateChannel // uni-directional
        {
            datarate = downLinkVDSL; // VDSL Downstream Bandwidth
        }
        channel DRouter_DISPRouter extends DatarateChannel // uni-directional
        {
            datarate = upLinkVDSL; // VDSL Upstream Bandwidth
        }
        channel AP_DRouter extends Eth100M // bi-directional
        {
        }

    submodules:
        AP: AccessPoint {
            @display("p=621.4425,484.12");
        }
        DRouter: Router {
            @display("p=621.4425,121.03");
        }
        DISPRouter: Router {
            @display("p=849.53754,283.95502");
        }
        HTTPServer: StandardHost {
            @display("p=982.205,121.03;i=device/server");
        }
        LISPRouter: Router {
            @display("p=1333.6575,283.95502");
        }
        LRouter: Router {
            @display("p=1603.6475,283.95502");
        }
        FTPServer: StandardHost {
            @display("p=1813.1226,465.5;i=device/server");
        }
        Professor: StandardHost {
            @display("p=1333.6575,465.5;i=misc/laptop2");
        }
        FTPUploadStudent: WirelessHost {
            @display("p=165.2525,283.95502");
        }
        Student: WirelessHost {
            @display("p=165.2525,486.4475");
        }
        Client[numClient]: WirelessHost {
            @display("p=165.2525,81.4625");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=1454.6875,74.48");
        }
        radioMedium: Ieee80211ScalarRadioMedium {
            @display("p=1249.8676,74.48");
        }
        visualizer: <default("IntegratedCanvasVisualizer")> like IIntegratedVisualizer if hasVisualizer() {
            @display("p=1761.2863,79.94125");
        }

    connections allowunconnected:
        FTPServer.ethg++ <--> FTPServer_LRouter <--> LRouter.ethg++;
        Professor.ethg++ <--> VideoLecture_LRouter <--> LRouter.ethg++;

        LRouter.pppg$o++ --> LRouter_LISPRouter --> LISPRouter.pppg$i++; // download
        LRouter.pppg$i++ <-- LISPRouter_LRouter <-- LISPRouter.pppg$o++; // upload

        HTTPServer.ethg++ <--> HTTPServer_DISPRouter <--> DISPRouter.ethg++; // HTTP server to...
        LISPRouter.ethg++ <--> LISPRouter_DISPRouter <--> DISPRouter.ethg++;

        DRouter.pppg$o++ --> DRouter_DISPRouter --> DISPRouter.pppg$i++; // upload
        DRouter.pppg$i++ <-- DISPRouter_DRouter <-- DISPRouter.pppg$o++; // download

        AP.ethg++ <--> AP_DRouter <--> DRouter.ethg++;
}
