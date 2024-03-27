using Documenter

makedocs(
    sitename = "SENSEHATKIDS",
    format = Documenter.HTML(),

    pages = [
        "Inleiding." => "index.md",
        "Blog" => "blog.md",
        "Sectie 1 - Installatie instructies." => [
            "1 Micro SD-kaartje klaarmaken voor de Raspberry Pi 4B." => "chapter1.md",
            "2 Communiceren met de Raspberry Pi." => "chapter2.md",
            "3 Sense-HAT software installeren." => "chapter3.md",
            "4 Node-RED installeren." => "chapter4.md"
        ],
        "Sectie 2 - Ervaring opdoen met Node-RED" => [
            "5 Je eerste applicatie: een website opzetten." => "chapter5.md"
        ],
        "Sectie 3 - Werken met API's" => [
            "6 Je tweede applicatie: Plaatjes van Honden tonen." => "chapter6.md"
        ],
        "Sectie 4 - ChatGPT als code generator gebruiken" => [
            "7 Je derde applicatie: Vuurpijl afschieten." => "chapter7.md"
        ],
        "Sectie 5 - Node-RED Dashboard programma maken" => [
            "8 Een Vuurpijl activeren vanuit je smartphone." => "chapter8.md"
        ],
        "Bijlage" => "appendix.md",
        "References" => "references.md"
    ]
)
