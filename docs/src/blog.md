# Blog

## 2024

### 27-03-2024 - Naam i.p.v. IP-adres gebruiken.

Als je met je Raspberry Pi werkt, kun je hem een speciale naam geven. Tijdens de installatie hebben we de naam "raspi-1" gebruikt. Dus in plaats van altijd dat lange IP-adres te moeten onthouden, kun je gewoon de naam gebruiken die je aan je Raspberry Pi hebt gegeven. Bijvoorbeeld:

```
ssh pi@raspi-1 # ipv pi@192.168.2.15
```

Dat is super handig!

### 13-03-2024 - Module voor de Sense-HAT.

Er is ook een Node-RED module voor de Sense-HAT. Zie o.a.:
- [sense-hat 1: input](https://www.youtube.com/watch?v=O3vcXhl6dTk)
- [sense-hat 2: output](https://www.youtube.com/watch?v=2Am_9DNQ1Bk)

Installleer de modue door te zoeken op `node-red-node-pi-sense-hat` in het menu onder: Manage Pallette. ``\\``![blog_1_1.png](assets/blog_1_1.png)

De nodes worden geinstalleerd onder de kop: Raspberry Pi.

Voorbeeld om tekst over het display te laten scrollen:

1. Sleep een Inject- en het Scroll message-node naar het canvas en verbind de twee nodes. ``\\``![blog_1_2](assets/blog_1_2.png)
2. Dubbelklik op timestamp node. Verander de waarde van het veld `msg.payload` in `String` en typ in het veld zelf de tekst: Hallo wereld! ``\\``![blog_1_3](assets/blog_1_4.png)
3. Klik op de toets: Deploy.
4. Laat de tekst over het scherm rollen door op de Inject node te klikken.

### 08-03-2024 - Klaar.
 
De cursus is klaar.

## 2023

### 28-12-2023 - Cursus opzet gemaakt.

Vandaag de basisstructuur voor de SENSEHATKIDS cursus opgezet.

