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
simple Source2
{
    parameters:
        volatile double iATime @unit(s);   // delay before sending back message
        int limit = default(2);               // used to limit number of messages by setting the limit in ini file
        @display("i=block/routing");
    gates:
        output out;
}

simple Destination2
{
    parameters:
        @display("i=block/routing");
    gates:
        input in;
}

network Exercise2
{
    @display("bgb=289,141");
    submodules:
        send: Source2 {
            parameters:
                @display("i=block/source,cyan;p=31,42");
        }
        receive: Destination2 {
            parameters:
                @display("i=block/sink,gold;p=214,42");
        }
    connections:
        send.out --> receive.in;
}
