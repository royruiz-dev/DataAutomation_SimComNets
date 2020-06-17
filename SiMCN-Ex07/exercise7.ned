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

import inet.common.misc.NetAnimTrace;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.Router;
import inet.node.inet.StandardHost;
import ned.DatarateChannel;

network Exercise7
{
    parameters:
        // used to alternate between ISDN and DSL as configs in the INI file
        volatile double dataRate @unit(Mbps);
        int numUsers; // number of users in the network
        @display("bgb=450,171");
    types:
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
                @display("p=84,106;i=device/pc3");
        }
        accessRouter[25]: Router {
            parameters:
                @display("p=84,106;i=device/pc3");
        }
        user[625]: StandardHost {
            parameters:
                @display("p=344,106;i=device/pc2");
        }
        gatewayRouter: Router {
            parameters:
                @display("p=84,106;i=device/pc3");
        }
        configurator: Ipv4NetworkConfigurator {
            parameters:
                @display("p=392,31;is=s");
        }
        
    connections:
        for i=0..4 {
        	backboneRouter[i].pppg++ <--> Gateway <--> gatewayRouter.pppg++; // Two one-directional channels to achieve bi-directional link
        }
        for i=0..24, for j=0..624 {
        	accessRouter[i].pppg++  <--> Access <--> user[j].pppg++;
        }
        for i=0..5, for j=0..24 {
        	backboneRouter[i].pppg++ <--> Backbone <--> accessRouter[j].pppg++;
        }
		
		}
		
