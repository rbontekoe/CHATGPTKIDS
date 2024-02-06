using Documenter

makedocs(
    sitename = "CHATGPTKIDS",
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
            "5 Je eerste applicatie: een website opzetten" => "chapter5.md"
        ],
        "Sectie 3 - Ervaring opdoen met API's" => [
            "6 Wat is een API?" => "chapter6.md" => "chapter6.md"
            "7 Voorbeeld van een Honden website" => "chapter7.md"
        ],
        "Sectie 4 - ChatGPT als code generator gebruiken" => [
            "7 Vuurpijl afschieten" => "chapter10.md",
        ],
        "Bijlage" => "appendix.md",
        "References" => "references.md"
    ]
)
