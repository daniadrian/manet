package manet2;

import inet.common.scenario.ScenarioManager;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.networklayer.ipv4.RoutingTableRecorder;
import inet.node.dsdv.DsdvRouter;
import inet.node.aodv.AodvRouter;
import inet.physicallayer.wireless.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;

network ManetNetworkAODV
{
    parameters:
        int numHosts;
        @display("bgb=800,800");
    submodules:
        radioMedium: Ieee80211ScalarRadioMedium {
            parameters:
                @display("p=100,200;is=s");
        }
        configurator: Ipv4NetworkConfigurator {
            parameters:
                config = xml("<config><interface hosts='*' address='10.0.x.x' netmask='255.255.0.0'/></config>");
                @display("p=100,100;is=s");
        }
        routingTableRecorder: RoutingTableRecorder {
            parameters:
                @display("p=100,300;is=s");
        }
        scenarioManager: ScenarioManager {
            parameters:
                script = default(xml("<scenario/>"));
                @display("p=100,400;is=s");
        }
        // AODV router submodule, enabled only if routingProtocol is "AODV"
        aodvRouter[numHosts]: AodvRouter {
            parameters:
                @display("i=device/pocketpc_s;r=,,#707070");
        }
    connections allowunconnected:
}
