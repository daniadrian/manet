package manet2;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.ManetRouter;
import inet.physicallayer.wireless.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;
import inet.visualizer.common.IntegratedMultiVisualizer;


network ManetprotocolsShowcaseA
{
    parameters:
        @display("bgb=1500,1000;bgl=2");
        @statistic[numRcvdPk](source=count(source.app[0].pingRxSeq); record=figure; targetFigure=numRcvdPkCounter; checkSignals=false);
        @figure[numRcvdPkCounter](type=counter; pos=65,400; label="Received ping replies"; decimalPlaces=4);
        @statistic[numLost](source=count(source.app[0].numLost); record=figure; targetFigure=numLostPkCounter; checkSignals=false);
        @figure[numLostPkCounter](type=counter; pos=65,500; label="Pings lost"; decimalPlaces=4);
        @figure[forest](type=image; image="showcases/forest"; pos=0,0; transform=scale(0.7),translate(1100,450));
        @figure[tree1](type=image; image="showcases/tree"; pos=0,0; transform=scale(0.1),translate(1000,350));
        @figure[tree2](type=image; image="showcases/tree"; pos=0,0; transform=scale(0.1),translate(1065,260));
        @figure[tree3](type=image; image="showcases/tree"; pos=0,0; transform=scale(0.1),translate(1140,380));
        @figure[tree4](type=image; image="showcases/tree"; pos=0,0; transform=scale(0.1),translate(1080,470));
        @figure[tree5](type=image; image="showcases/tree"; pos=0,0; transform=scale(0.1),translate(990,530));
        @figure[tree6](type=image; image="showcases/tree"; pos=0,0; transform=scale(0.1),translate(1050,600));
        @figure[tree7](type=image; image="showcases/tree"; pos=0,0; transform=scale(0.1),translate(1170,620));
    
     submodules:
        radioMedium: Ieee80211ScalarRadioMedium {
            @display("p=100,100");
        }
        visualizer: IntegratedMultiVisualizer {
            @display("p=100,200");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=100,300");
        }
        source: ManetRouter {
            @display("p=394,189;i=misc/solarpanel");
        }
        destination: ManetRouter {
            @display("p=1230,492;i=misc/sensorgateway");
        }
        node1: ManetRouter {
            @display("p=1064.24,824.82465;i=misc/solarpanel");
        }
        node2: ManetRouter {
            @display("p=940,718;i=misc/solarpanel");
        }
        node3: ManetRouter {
            @display("p=1304,253;i=misc/solarpanel");
        }
        node4: ManetRouter {
            @display("p=1331,391;i=misc/solarpanel");
        }
        node5: ManetRouter {
            @display("p=890,430;i=misc/solarpanel");
        }
        node6: ManetRouter {
            @display("p=851,573;i=misc/solarpanel");
        }
        node7: ManetRouter {
            @display("p=1046,112;i=misc/solarpanel");
        }
        node8: ManetRouter {
            @display("p=901,157;i=misc/solarpanel");
        }
        node9: ManetRouter {
            @display("p=862,286;i=misc/solarpanel");
        }
        node10: ManetRouter {
            @display("p=1200,156;i=misc/solarpanel");
        }
        node11: ManetRouter {
            @display("p=701,373;i=misc/solarpanel");
        }
        node12: ManetRouter {
            @display("p=529,286;i=misc/solarpanel");
        }
}

network ManetprotocolsShowcaseB
{
    parameters:
        @display("bgb=2000,2000");
        @statistic[numRcvdPk](source=count(source1.app[0].pingRxSeq); record=figure; targetFigure=numRcvdPkCounter; checkSignals=false);
        @statistic[numRcvdPk](source=count(source2.app[0].pingRxSeq); record=figure; targetFigure=numRcvdPkCounter; checkSignals=false);
        @statistic[numRcvdPk](source=count(source3.app[0].pingRxSeq); record=figure; targetFigure=numRcvdPkCounter; checkSignals=false);
        @statistic[numRcvdPk](source=count(source4.app[0].pingRxSeq); record=figure; targetFigure=numRcvdPkCounter; checkSignals=false);
        @statistic[numRcvdPk](source=count(source5.app[0].pingRxSeq); record=figure; targetFigure=numRcvdPkCounter; checkSignals=false);
        @figure[numRcvdPkCounter](type=counter; transform=scale(0.5); pos=50,300; label="Received ping replies"; decimalPlaces=4);
        @statistic[numLost](source=count(source1.app[0].numLost); record=figure; targetFigure=numLostPkCounter; checkSignals=false);
        @statistic[numLost](source=count(source2.app[0].numLost); record=figure; targetFigure=numLostPkCounter; checkSignals=false);
        @statistic[numLost](source=count(source3.app[0].numLost); record=figure; targetFigure=numLostPkCounter; checkSignals=false);
        @statistic[numLost](source=count(source4.app[0].numLost); record=figure; targetFigure=numLostPkCounter; checkSignals=false);
        @statistic[numLost](source=count(source5.app[0].numLost); record=figure; targetFigure=numLostPkCounter; checkSignals=false);
        @figure[numLostPkCounter](type=counter; transform=scale(0.5); pos=50,400; label="Pings lost"; decimalPlaces=4);
    
submodules:   
		source1: ManetRouter {
            @display("p=1040,1335");
        }
        source2: ManetRouter {
            @display("p=900,835");
        }
        source3: ManetRouter {
            @display("p=1200,335");
        }
        source4: ManetRouter {
            @display("p=1200,1335");
        }
        source5: ManetRouter {
            @display("p=750,1335");
        }
        node1: ManetRouter {
            @display("p=1040,1226");
        }
        node2: ManetRouter {
            @display("p=750,1140");
        }
        node3: ManetRouter {
            @display("p=1100,1276");
        }
        node4: ManetRouter {
            @display("p=1200,1196");
        }
        node5: ManetRouter {
            @display("p=350,1120");
        }
        node6: ManetRouter {
            @display("p=1470,1067");
        }
        node7: ManetRouter {
            @display("p=600,1125");
        }
        node8: ManetRouter {
            @display("p=1250,1080");
        }
        node9: ManetRouter {
            @display("p=1500,1500");
        }
        node10: ManetRouter {
            @display("p=400,1200");
        }
        destination1: ManetRouter {
            @display("p=1500,300");
        }
        destination2: ManetRouter {
            @display("p=100,600");
        }
        destination3: ManetRouter {
            @display("p=200,1500");
        }
        destination4: ManetRouter {
            @display("p=1600,500");
        }
        destination5: ManetRouter {
            @display("p=320,180");
        }
        radioMedium: Ieee80211ScalarRadioMedium {
            @display("p=50,250");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=50.461544,350");
        }
        visualizer: IntegratedMultiVisualizer {
            @display("p=50.461544,500");
        }
}