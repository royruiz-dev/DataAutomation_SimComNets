//
// Copyright (C) 2000 Institut fuer Telematik, Universitaet Karlsruhe
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
//

import inet.common.misc.NetAnimTrace;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.StandardHost;
import ned.DatarateChannel;

network Exercise6
{
    parameters:
        double n = default(0); // used for BER
        @display("bgb=450,171");
    types:
        channel C extends DatarateChannel
        {
            datarate = default(1 Mbps); // a transmission rate of 1 Mbps
            delay = default(200 ms); // 200 ms delay
            ber = n; // bit error rate - multiple values set in INI file
        }
    submodules:
        client: StandardHost {
            parameters:
                @display("p=84,106;i=device/pc3");
        }
        server: StandardHost {
            parameters:
                @display("p=344,106;i=device/pc2");
        }
        configurator: Ipv4NetworkConfigurator {
            parameters:
                @display("p=392,31;is=s");
        }
    connections:
        client.pppg++ <--> C { @display("t=PPP Link,t,#212221;ls=#212221,2"); } <--> server.pppg++; //Two one-directional channels to achieve bi-directional link
		}

