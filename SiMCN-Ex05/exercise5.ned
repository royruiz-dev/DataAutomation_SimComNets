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

//
// TODO auto-generated type
//

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.StandardHost;
import ned.DatarateChannel;

network Exercise5
{
    parameters:
        double n = default(0); // used for BER
        @display("bgb=411.24997,124.24999");
    types:
        channel C extends DatarateChannel
        {
            datarate = default(1 Mbps); // a transmission rate of 1 Mbps
            delay = default(200 ms); // 200 ms delay
            ber = n; // bit error rate - defined in INI file
        }
    submodules:
        client: StandardHost {
            parameters:
                @display("p=136.5,43.749996;i=device/pc3");
        }
        server: StandardHost {
            parameters:
                @display("p=364.87497,42.874996;i=device/pc2");
        }
        configurator: Ipv4NetworkConfigurator {
            parameters:
                @display("p=61.249996,42.874996;is=s");
        }
    connections:
        // Bi-directional link connection to achieve TWO one-directional channels
        client.pppg++ <--> C { @display("t=PPP Link,t,#212221;ls=#212221,4"); } <--> server.pppg++;
}

