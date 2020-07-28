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
        int HTTP_Clients; // number of Clients web browsing
        @display("bgb=1259,379");

    types:
        channel FTPServer_LRouter extends DatarateChannel // bi-directional
        {
            datarate = default(100Mbps);
        }
        channel Lecture_LRouter extends DatarateChannel // bi-directional
        {
            datarate = default(100Mbps);
        }
        channel LRouter_LISPRouter extends DatarateChannel // uni-directional
        {
            datarate = default(8Mbps); // ADSL Downstream Bandwidth
        }
        channel LISPRouter_LRouter extends DatarateChannel // uni-directional
        {
            datarate = default(1Mbps); // ADSL Upstream Bandwidth
        }
        channel LISPRouter_DISPRouter extends DatarateChannel // bi-directional
        {
            datarate = default(100Mbps);
            delay = default(60ms);
        }
        channel HTTPServer_DISPRouter extends DatarateChannel // bi-directional
        {
            datarate = default(100Mbps);
            delay = default(60ms);
        }
        channel DISPRouter_DRouter extends DatarateChannel // uni-directional
        {
            datarate = default(100Mbps); // VDSL Downstream Bandwidth
        }
        channel DRouter_DISPRouter extends DatarateChannel // uni-directional
        {
            datarate = default(40Mbps); // VDSL Upstream Bandwidth
        }
        channel AP_DRouter extends DatarateChannel // bi-directional
        {
            datarate = default(100Mbps);
        }

    submodules:
        AP: AccessPoint {
            @display("p=268,227");
        }
        DRouter: Router {
            @display("p=360,274");
        }
        DISPRouter: Router {
            @display("p=528,274");
        }
        HTTPServer: StandardHost {
            @display("p=623,110;i=device/server");
        }
        LISPRouter: Router {
            @display("p=809,274");
        }
        LRouter: Router {
            @display("p=957,274");
        }
        FTPServer: StandardHost {
            @display("p=1056,110;i=device/server");
        }
        Professor: StandardHost {
            @display("p=869,170;i=misc/laptop2");
        }
        FTPUploadStudent: WirelessHost {
            @display("p=210,306");
        }
        VideoLectureStudent: WirelessHost {
            @display("p=159,228");
        }
        Client[HTTP_Clients]: WirelessHost {
            @display("p=210,134");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=848,70");
        }
        radioMedium: Ieee80211ScalarRadioMedium {
            @display("p=324,169");
        }

    connections allowunconnected:
        FTPServer.ethg++ <--> FTPServer_LRouter <--> LRouter.ethg++;
        Professor.ethg++ <--> Lecture_LRouter <--> LRouter.ethg++;

        LRouter.pppg$o++ --> LRouter_LISPRouter --> LISPRouter.pppg$i++; // download
        LRouter.pppg$i++ <-- LISPRouter_LRouter <-- LISPRouter.pppg$o++; // upload

        HTTPServer.ethg++ <--> HTTPServer_DISPRouter <--> DISPRouter.ethg++; // HTTP server to...
        LISPRouter.ethg++ <--> LISPRouter_DISPRouter <--> DISPRouter.ethg++;

        DRouter.pppg$o++ --> DRouter_DISPRouter --> DISPRouter.pppg$i++; // upload
        DRouter.pppg$i++ <-- DISPRouter_DRouter <-- DISPRouter.pppg$o++; // download

        AP.ethg++ <--> AP_DRouter <--> DRouter.ethg++;
}
