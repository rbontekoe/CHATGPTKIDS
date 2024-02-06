# Wat is een API?

*We gaan een plaatje van een hond ophalen en weergeven op onze website.*

### Inhoud

```@contents
Pages = ["chapter6.md"]
```

## Wat je nodig hebt.

- Een Raspberry Pi 4B met het besturingssysteem Raspberry Pi Lite. 
- SSH verbinding met de Raspberry Pi.

## Wat je gaat doen.

Stap 1: Werken met API's?

Stap 2: Bouwen van onze honden-website.

## Stap 2: Werken met API's.

Een API is een manier voor computers om met elkaar te praten en informatie uit te wisselen. Ze doen dit door verzoeken en antwoorden uit te wisselen. JSON is een manier om informatie op te slaan en uit te wisselen die zowel door computers als door mensen begrepen wordt.

Zo is er de website [Dogs](https://dog.ceo/api/breeds/image/random) die steeds de URL van een ander plaatje van een hond geeft in JSON formaat:

```
{
  "status":"success",
  "message":"https://images.dog.ceo/breeds/segugio-italian/n02090722_002.jpg"
}
```

De code bevat twee delen: een sleutel en een waarde gescheiden door een dubbele punt (:). De sleutel is aan de linkerkant en de waarde is aan de rechterkant.

De eerste sleutel is "status" en de waarde is "success". Dit betekent dat alles goed is gegaan en er geen fouten zijn opgetreden.

De tweede sleutel is "message" en de waarde is een URL "https://images.dog.ceo/breeds/segugio-italian/n02090722_002.jpg". Dit is een link naar een afbeelding op het internet.

Dus dit stuk code bevat informatie over de status van een bepaalde actie en een link naar een afbeelding.

**Voer de volgende stappen uit:**

1. Ga met je browser naar `IP_adres_raspberry_pi:1880`.

2. Sleep de volgende knooppunten naar je werkblad:
   - `http in`
   - `http request`
   - `template`
   - `http response`
   - `debug`

   Een `http request` gebruik je als je op internet iets vraagt aan een website, zoals de honden website. Het antwoord dat je terugkrijgt is in het formaat van "JSON". Als je "debug" gebruikt, kun je het antwoord dat je hebt opgehaald bekijken.

2. Verbind de knooppunten net als op de tekening:
   
   ![fig_6_1](assets/fig_6_1.png)

3. Voer de volgende webadres in bij het invoerveld 'http in': `/toon`.

4. Geef het webadres voor een foto van een hond op: `https://dog.ceo/api/breeds/image/random`. Stel "**<-**Return" in op "a parsed JSON object".

5. Je krijgt een plaatje van een willekeurige hond te zien met de HTML code: `<img src="{{payload}}.message">`.

   Deze code moet je gebruiken om [echte websites](https://www.w3schools.com/html/html_intro.asp) te maken.

   Plaats in het `template` de HTML-code voor de website:

   ```
   <!DOCTYPE html>
   <html>
   <head>

     <title>Dogs</title>

   </head>
   <body>

     <img src="{{payload.message}}">

   </body>
   </html>
   ```
   In de `<head>` sectie kun je de titel van je website zetten. In de `<body>` sectie kun je de HTML voor de website zetten.
   
   Klik [hier voor een lijst met API's](https://mixedanalytics.com/blog/list-actually-free-open-no-auth-needed-apis/).

6. Test het resultaat in de browser: `IP_adres_raspberry_pi:1880/toon`.


## Samenvatting

