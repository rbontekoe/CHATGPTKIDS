# Bijlage

!!! info
    Zorg ervoor dat je toestemming hebt van een ouder of verantwoordelijke volwassene voordat je iets downloadt op je computer. Als je hulp nodig hebt tijdens het downloaden en installeren, vraag dan aan een ouder of verantwoordelijke volwassene om je te helpen.


## Geëxporteerde code van alle hoofdstukken vanaf les 5

Importeer de de volgende code via het Menu/Import. Vooraf wel de dashboard module importeren!

```
[
    {
        "id": "ed0273b10defa41d",
        "type": "tab",
        "label": "Flow 1",
        "disabled": false,
        "info": "",
        "env": []
    },
    {
        "id": "a44799841615fc3f",
        "type": "http in",
        "z": "ed0273b10defa41d",
        "name": "",
        "url": "/hallo",
        "method": "get",
        "upload": false,
        "swaggerDoc": "",
        "x": 240,
        "y": 440,
        "wires": [
            [
                "aa313c1a146b0da2"
            ]
        ]
    },
    {
        "id": "aa313c1a146b0da2",
        "type": "template",
        "z": "ed0273b10defa41d",
        "name": "",
        "field": "payload",
        "fieldType": "msg",
        "format": "handlebars",
        "syntax": "mustache",
        "template": "<h1>Hallo Wereld!</h1>",
        "output": "str",
        "x": 420,
        "y": 440,
        "wires": [
            [
                "e4ff9979a5fc743e"
            ]
        ]
    },
    {
        "id": "e4ff9979a5fc743e",
        "type": "http response",
        "z": "ed0273b10defa41d",
        "name": "",
        "statusCode": "",
        "headers": {},
        "x": 610,
        "y": 440,
        "wires": []
    },
    {
        "id": "7e1e740d476a49e4",
        "type": "http in",
        "z": "ed0273b10defa41d",
        "name": "",
        "url": "/toon",
        "method": "get",
        "upload": false,
        "swaggerDoc": "",
        "x": 240,
        "y": 540,
        "wires": [
            [
                "c7abed8c98e81ca0"
            ]
        ]
    },
    {
        "id": "c7abed8c98e81ca0",
        "type": "http request",
        "z": "ed0273b10defa41d",
        "name": "",
        "method": "GET",
        "ret": "obj",
        "paytoqs": "ignore",
        "url": "https://dog.ceo/api/breeds/image/random",
        "tls": "",
        "persist": false,
        "proxy": "",
        "insecureHTTPParser": false,
        "authType": "",
        "senderr": false,
        "headers": [],
        "x": 430,
        "y": 540,
        "wires": [
            [
                "af5ee5d70684e2da",
                "c372f4973d792f55"
            ]
        ]
    },
    {
        "id": "0585d3d826d2aba1",
        "type": "http response",
        "z": "ed0273b10defa41d",
        "name": "",
        "statusCode": "",
        "headers": {},
        "x": 790,
        "y": 540,
        "wires": []
    },
    {
        "id": "af5ee5d70684e2da",
        "type": "debug",
        "z": "ed0273b10defa41d",
        "name": "debug 1",
        "active": true,
        "tosidebar": true,
        "console": false,
        "tostatus": false,
        "complete": "false",
        "statusVal": "",
        "statusType": "auto",
        "x": 620,
        "y": 500,
        "wires": []
    },
    {
        "id": "c372f4973d792f55",
        "type": "template",
        "z": "ed0273b10defa41d",
        "name": "",
        "field": "payload",
        "fieldType": "msg",
        "format": "handlebars",
        "syntax": "mustache",
        "template": "<!DOCTYPE html>\n<html>\n  <head>\n    <title>Bootstrap Example</title>\n    <meta charset=\"utf-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">\n    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js\"></script>\n    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>\n  </head>\n  <body>\n   \n    <div class=\"container\">\n      <button onclick=\"location.reload();\">Volgende plaatje</button>\n      <h1 stype=\"text-align:center;\">Mijn Eerste Honden Pagina</h1>\n      <img src=\"{{payload.message}}\" width=\"100%\" />           \n    </div>\n  \n  </body>\n</html>",
        "output": "str",
        "x": 620,
        "y": 540,
        "wires": [
            [
                "0585d3d826d2aba1"
            ]
        ]
    },
    {
        "id": "0810cff27415d8a1",
        "type": "inject",
        "z": "ed0273b10defa41d",
        "name": "",
        "props": [
            {
                "p": "payload"
            },
            {
                "p": "topic",
                "vt": "str"
            }
        ],
        "repeat": "",
        "crontab": "",
        "once": false,
        "onceDelay": 0.1,
        "topic": "",
        "payload": "",
        "payloadType": "date",
        "x": 240,
        "y": 680,
        "wires": [
            [
                "a6d9220e229025aa"
            ]
        ]
    },
    {
        "id": "a6d9220e229025aa",
        "type": "exec",
        "z": "ed0273b10defa41d",
        "command": "python",
        "addpay": "",
        "append": "/home/pi/projects/python/vuurpijl.py",
        "useSpawn": "false",
        "timer": "",
        "winHide": false,
        "oldrc": false,
        "name": "",
        "x": 410,
        "y": 680,
        "wires": [
            [],
            [],
            [
                "a9b6ce78b11161eb"
            ]
        ]
    },
    {
        "id": "a9b6ce78b11161eb",
        "type": "debug",
        "z": "ed0273b10defa41d",
        "name": "debug 2",
        "active": true,
        "tosidebar": true,
        "console": false,
        "tostatus": false,
        "complete": "false",
        "statusVal": "",
        "statusType": "auto",
        "x": 600,
        "y": 680,
        "wires": []
    },
    {
        "id": "1d50524c2b1ea318",
        "type": "ui_button",
        "z": "ed0273b10defa41d",
        "name": "",
        "group": "90fbf9434e65a502",
        "order": 1,
        "width": 0,
        "height": 0,
        "passthru": false,
        "label": "button",
        "tooltip": "",
        "color": "",
        "bgcolor": "",
        "className": "",
        "icon": "",
        "payload": "",
        "payloadType": "str",
        "topic": "topic",
        "topicType": "msg",
        "x": 250,
        "y": 620,
        "wires": [
            [
                "a6d9220e229025aa"
            ]
        ]
    },
    {
        "id": "9a894b22ad925e1f",
        "type": "ui_text",
        "z": "ed0273b10defa41d",
        "group": "90fbf9434e65a502",
        "order": 2,
        "width": 0,
        "height": 0,
        "name": "",
        "label": "Druk op de toets om een vuurpijl af te schieten.",
        "format": "{{msg.payload}}",
        "layout": "row-spread",
        "className": "",
        "style": false,
        "font": "",
        "fontSize": 16,
        "color": "#000000",
        "x": 380,
        "y": 740,
        "wires": []
    },
    {
        "id": "90fbf9434e65a502",
        "type": "ui_group",
        "name": "Vuurpijl",
        "tab": "1a8865122babe94a",
        "order": 1,
        "disp": true,
        "width": "6",
        "collapse": false,
        "className": "<hr>"
    },
    {
        "id": "1a8865122babe94a",
        "type": "ui_tab",
        "name": "Programma's",
        "icon": "dashboard",
        "order": 1,
        "disabled": false,
        "hidden": false
    }
]
```