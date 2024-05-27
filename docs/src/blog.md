# Blog

## 2024

### 26-5-2024 - UCTRONICS HDMI display

Ik gebruik een 7-inch HDMI 1024x600 LCD display met capacitieve multi-touch touchscreen van [UCtronics](https://www.sossolutions.nl/uctronics-7-inch-ips-touchscreen-for-raspberry-pi-with-prop-stand-1024-600-capacitive-hdmi-lcd-monitor-portable-display-for-raspberry-pi-4-3-b-windows-10-8-7-free-driver?gad_source=1&gclid=Cj0KCQjw3tCyBhDBARIsAEY0XNlMsYe0sFoa4RbZ23QPJDhGwW9soGrXK5luyFV-TT80C5EnAl_Sas0aAk5lEALw_wcB). Voor de SENSEHATKIDS cursus gebruik ik het om het IP-adres van de Raspberry Pi 4 te achterhalen met: `ip a`. Om het display geschikt te maken zijn er wat aanpassingen nodig. Installeer wel de 64 bit Desktop versie van de Raspberry Pi 4 OS i.p.v. de Rasspberry Pi lite. Verander vervolgens het bestand config.txt: 

``` 
sudo nano /boot/firmware/config.txt
```

1. Verander in het bestand: dtoverlay=vc4-kms-v3d in: `dtoverlay=vc4-**f**kms-v3d`.
2. Herstart de Raspberry Pi met: `sudo reboot`.

### 12-04-2024 - Wifi probleem

Ik wilde voor de CoderDojo morgen de wifi gegevens aanpassen met: `sudo raspi-config` maar kreeg helaas een foutmelding. In de [bijlage](../appendix/index.html#Foutmelding-bij-wijzigen-WiFi-gegevens) vind je hoe je het probleem zou kunnen oplossen.

Ook in de [bijlage](../appendix/index#Veranderen-wachtwoord-via-de-terminal) aangegeven hoe je het wachtwoord kunt veranderen, zie [link](https://www.idownloadblog.com/2021/05/17/change-password-raspberry-pi/)

### 09-04-2024 - Kopieren van code voorbeelden.

Nu, als je kijkt naar de lessen, zie je soms een symbool dat lijkt op "Copy" rechtsboven bij de codevoorbeelden. Als je daarop klikt, wordt de tekst automatisch gekopieerd naar het klembord van de computer, zodat je het gemakkelijk kunt plakken waar je maar wilt. Hier is een voorbeeld:

```
Deze tekst kun je ook kopieren naar het klembord door op het "Copy" symbool te klikken.

Het "Copy" symbool zie je in de rechterbovenhoek van deze tekst.

Als je de code hebt gekopieerd, zie je een groen vinkje verschijnen.
Dat betekent dat het gelukt is!
```

### 27-03-2024 - Naam i.p.v. IP-adres gebruiken.

Als je met je Raspberry Pi werkt, kun je hem een speciale naam geven. Tijdens de installatie hebben we de naam "raspi-1" gebruikt. Dus in plaats van altijd dat lange IP-adres te moeten onthouden, kun je gewoon de naam gebruiken die je aan je Raspberry Pi hebt gegeven. Bijvoorbeeld:

```
ssh pi@raspi-1 # ipv pi@192.168.2.15
```

Dat is super handig!

!!! info "Werkt niet bij het TechLab"
    Overigens werkt de naam `raspi-1` niet bij de CoderDojo evenementen die door het TechLab worden georganiseerd.

    Ik heb daarom de Desktop versie geinstalleerd, zodat je de juiste SSID kunt installeren en wachtwoord. Het ssh wachtwoord is voor de Raspberry Pi is: r7P94%B&.
    
    Als je het ip-adres wilt weten typ dan: `ip a` in de terminal. Een terminal maak je met: Ctrl+T.

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

