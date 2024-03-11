# Toepassingen met de Raspberry Pi.

*In deze cursus leer je werken met de Raspberry Pi samen met de Sense-HAT uitbreiding.*

!!! info "Let op"
    Kijk in de Blog voor de laatste opmerkingen!

## Inleiding.

Ik werk mee aan [CoderDojo](https://www.leusdenzet.nl/techlab/coderdojo/) evenementen voor kinderen bij het Technisch Lab van LeusdenZet, door het maken van online cursusmateriaal.

In deze cursus laat ik zien hoe je Node-RED programma's kunt maken die draaien op een Raspberry Pi 4B samen met de Sense-HAT.

De lessen in de cursus gaan uit van een complete Raspberry Pi 4B met de Sense-HAT, waar al software al opstaat, zodat je meteen kunt beginnen met een les. Voor de volledigheid laat ik in les 1 t/m 4 zien hoe je het Raspberry Pi besturingssysteem op een SD-kaartje zet, zodat je thuis de cursus ook kunt volgen.

Je leert eerst kennismaken met de Node-RED programmeer omgeving. Je eerste project is een website maken. Later maak je ook kennis met de Dashboard knooppunten (ook wel nodes genoemd). Het voordeel van het Dashboard is dat als je data verandet het ook meteen zichtbaaar is op een applicatie die je bijvoorbeeld via je smartphone bekijkt.

Ik werk graag met Node-RED. Dit is een programma waarmee we grafisch onze programma's kunnen opbouwen. Het is vergelijkbaar met programma's voor de BBC Micro-bit. Op YouTube zijn heel veel [instructie-videos](https://www.youtube.com/channel/UCQaB8NXBEPod7Ab8PPCLLAA) te vinden over Node-RED.

Je gaat ook Python in de cursus gebruiken. Python wordt standaard meegeleverd bij het Raspberry Pi besturingssysteem, het is een populaire programmeertaal waarmee je ook de Sense-HAT kunt aansturen en uitlezen.

ChatGPT is een generatieve AI (kustmatige intelligentie) dat Python programma's voor je kan gnereren. In de cursus maak je daarmee kennis. ChatGPT wordt dus je prive programmeur. Helaas lukte het mij niet om flows voor Node-RED door de gratis versie (3.5) van ChatGPT te laten genereren. Dan heb zou je Python niet meer nodig hebben.

Succes met de cursus.

Rob Bontekoe

!!! info "Op deze cursus is de MIT licentie van toepassing"

    De MIT-licentie is een soort regel die zegt dat mensen het mogen gebruiken, kopiëren, wijzigen en delen van een bepaald programma op hun computer of andere apparaat, zolang ze de maker ervan duidelijk vermelden en het programma niet verkopen zonder toestemming. Dit is een handige manier om ervoor te zorgen dat mensen het programma kunnen gebruiken om te leren of om er dingen mee te maken, zonder dat ze daar geld voor hoeven te betalen.


## Voor wie is deze cursus bestemd?

De cursus is bestemd voor kinderen van 8 tot 14 jaar.

## Wat is een Raspberry Pi?

Een Raspberry Pi is een kleine computer die je kunt gebruiken om allerlei leuke dingen mee te doen, zoals je eigen website maken of een spel spelen. Er zijn een paar dingen die Raspberry Pi's aantrekkelijk maken om te gebruiken:
- Ze zijn goedkoop: je kunt al een Raspberry Pi kopen voor een paar tientjes.
- Ze zijn klein: je kunt een Raspberry Pi gemakkelijk meenemen in je tas of zak.
- Ze gebruiken weinig stroom: omdat ze klein en niet zo krachtig zijn, gebruiken ze niet zoveel stroom als gewone computers. Je kunt de Raspberry Pi dus dag en nacht aan laten staan zonder dat het veel stroom kost.
- Ze zijn goed voor het leren van computers: een goede manier om te leren hoe computers werken zonder dat je bang hoeft te zijn dat je iets kapot maakt.

![Raspberry Pi 4B](https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Raspberry_Pi_4_Model_B_-_Top.jpg/330px-Raspberry_Pi_4_Model_B_-_Top.jpg)

**Raspberry Pi 4B**

Deze cursus is gemaakt om te werken op een [Raspberry Pi 4B](https://nl.wikipedia.org/wiki/Raspberry_Pi#:~:text=Raspberry%20Pi%203,-De%20RPi%203&text=Op%20Pi%2Ddag%202018%20verscheen,(100%20Mbit%2Fs).). We hebben het getest om ervoor te zorgen dat alles goed werkt op die computer.

## Wat is een Sense-HAT?

Een [Sense HAT](https://elektronicavoorjou.nl/product/raspberry-pi-sense-hat-v2/) is een uitbreidingskaart die specifiek is ontworpen voor de Raspberry Pi, een kleine, programmeerbare computer. De Sense HAT bevat verschillende sensoren en LED's die de mogelijkheid bieden om verschillende gegevens te meten, te verzamelen en weer te geven.

De belangrijkste componenten van een Sense HAT omvatten een verzameling sensoren, zoals een gyroscoop, versnellingsmeter, magneetometer, temperatuursensor, luchtdruksensor en een vochtigheidssensor. Deze sensoren stellen de gebruiker in staat om informatie te verzamelen over beweging, oriëntatie, temperatuur, luchtdruk en vochtigheid in de omgeving.

Daarnaast heeft de Sense HAT een matrix van LED's (Light Emitting Diodes) die kunnen worden geprogrammeerd om verschillende patronen, letters, cijfers of afbeeldingen weer te geven. Dit biedt gebruikers de mogelijkheid om visuele feedback te geven of informatie op een creatieve manier te presenteren.

De Sense HAT is populair in educatieve omgevingen en projecten voor het leren programmeren, omdat het een praktisch en hands-on platform biedt voor het verkennen van sensortechnologie, gegevensverzameling en het maken van interactieve projecten met de Raspberry Pi. Het wordt ook gebruikt in verschillende toepassingen zoals weerstations, experimenten met bewegingsdetectie, gaming, en voor het creëren van visuele displays.

```@raw html
<img src="https://www.raspberrypi.com/documentation/accessories/images/Sense-HAT.jpg" alt="Sense-HAT" width="300">
```

**Sense-HAT**

## Wat is Node-RED?

[Node-RED](https://www.compusers.nl/sites/default/files/swb-jaargangen/2019/2019-2/SwB20192_IoT_Domotica_en_NodeRED.pdf) is een programma dat je kunt gebruiken om eenvoudig kleine programma's, of "flows", te maken. Dit kun je doen door knoppen en andere elementen op een scherm te slepen en te plakken, en door ze met elkaar te verbinden met lijnen.

Stel je voor dat je een spel hebt waarbij je allerlei opdrachten moet doen. Met Node-RED is het net alsof je de opdrachten op een rijtje kunt leggen, en door middel van pijlen kunt aangeven wat er moet gebeuren als je een opdracht hebt voltooid. Zo kun je bijvoorbeeld aangeven dat als je klaar bent met opruimen, je een film mag kijken.

Node-RED wordt vaak gebruikt om dingen te automatiseren of om informatie van verschillende bronnen te verzamelen en te verwerken. Bijvoorbeeld, je kunt Node-RED gebruiken om te controleren of er nieuwe e-mails zijn, of om de temperatuur in huis te meten en de verwarming aan te zetten als het te koud wordt.

```@raw html
<img src="https://seeklogo.com/images/N/node-red-logo-03ED3C7805-seeklogo.com.png" alt="Node-RED logo" width="100">
```

## Wat is Python?

Python is een programmeertaal die is ontworpen om leesbaarheid en eenvoud te bevorderen. Het is een algemeen doel taal, wat betekent dat het een breed scala aan toepassingen heeft en gebruikt kan worden voor verschillende soorten softwareontwikkeling.

Het staat bekend om zijn duidelijke en begrijpelijke syntaxis, waardoor het gemakkelijk te leren is, zelfs voor beginners in de programmeerwereld. Python is een geïnterpreteerde taal, wat betekent dat de broncode direct kan worden uitgevoerd zonder dat deze eerst naar een machinecode moet worden gecompileerd. Hierdoor is het platformonafhankelijk en kan het op verschillende besturingssystemen worden gebruikt.

De taal heeft een uitgebreide standaardbibliotheek die veel ingebouwde functies en modules biedt, waardoor ontwikkelaars snel en efficiënt programma's kunnen schrijven zonder vanaf nul te hoeven beginnen. Python wordt gebruikt voor diverse toepassingen, zoals webontwikkeling, data-analyse, kunstmatige intelligentie, wetenschappelijke berekeningen, automatisering en meer.

Door zijn veelzijdigheid, eenvoudige leesbaarheid en brede toepassingsgebieden is Python een populaire keuze geworden in de programmeerwereld, zowel voor beginners als ervaren ontwikkelaars.

```@raw html
<img src="https://seeklogo.com/images/P/python-logo-A32636CAA3-seeklogo.com.png" alt="Node-RED logo" width="100">
```

## Wat is ChatGPT?

Ik vroeg het aan ChatGPT zelf. Hier is het antwoord. 

###### ChatGPT: Jouw Slimme Gesprekspartner!

Hey daar! Ik ben ChatGPT, een super slim programma dat met je kan praten en vragen beantwoorden. Het is net alsof ik een hele slimme robot ben die veel dingen weet!

###### Wat kan ik doen?

- **Vragen beantwoorden:** Vraag me alles! Over dieren, wetenschap, geschiedenis, of wat je maar wilt weten.
- **Spelletjes:** Laten we samen raadsels oplossen of misschien een quiz doen!
- **Verhalen vertellen:** Wil je een kort verhaal horen? Ik kan er een voor je maken!
- **Python code genereren:** Ik kan zelfs helpen met het maken van eenvoudige stukjes Python code!

###### Hoe werkt het?

Ik gebruik heel slimme technologie om te begrijpen wat je zegt en om je vragen te beantwoorden. Ik leer van alle informatie die ik krijg, net als jij op school leert!

###### Belangrijk om te weten

- Ik ben hier om te helpen en te leren, dus wees alsjeblieft aardig.
- Als ik iets niet weet, zal ik mijn best doen om het antwoord te vinden!

Dus, waar wil je het over hebben? Vraag maar raak!

```@raw html
<img src="https://seeklogo.com/images/C/chatgpt-logo-6E960AECFF-seeklogo.com.png" alt="Node-RED logo" width="100">
```