# Node-RED installeren.

*In deze les gaan we leren hoe je Node-RED installeert in een container met behulp van Portainer op een Raspberry Pi. Portainer is een programma dat het makkelijker maakt om containers te beheren. Node-RED is een tool die je helpt bij het maken van slimme toepassingen door middel van eenvoudige programma's die we "flows" noemen.*

### Inhoud.

```@contents
Pages = ["chapter4.md"]
```

## Wat je nodig hebt.

- Een Raspberry Pi 4B met het besturingssysteem Raspberry Pi Lite.
- Een Sense-HAT ingepluged op de Raspberry Pi.
- Een SSH verbinding met de Raspberry Pi vanuit je laptop.

## Wat je gaat doen.

Je gaat Node-RED installeren op de Raspberry Pi 4B.

Stap 1: Node-RED installeren.

Stap 2: Node-RED automatisch starten als de Raspberry Pi wordt aangezet.


## Stap 1: Node-RED installeren.

Het commando om Node-RED te installeren is: `bash <(curl -sL https://raw.githubusercontent.com/node-red/linux-installers/master/deb/update-nodejs-and-nodered)`.

Zie ook het document [Running on Raspberry Pi](https://nodered.org/docs/getting-started/raspberrypi).


## Stap 2: Node-RED automatisch starten als de Raspberry Pi wordt aangezet.

Zodra je Node-RED hebt geinstalleerd kan je het tsarten met: `node-red`.Het is handiger om Node-RED te starten als de Raspberry Pi wordt aangezet. Gebruik daarvoor het commando: `sudo systemctl enable nodered.service`.

## Samenvatting.

