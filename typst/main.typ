#let nazevPrace = "​​Detekce duplicit v geoprostorových datech"
#let misto = "Brno 2024"

#show bibliography: set heading(numbering: "1.1  ")
#set page(
  paper: "us-letter",
  margin: (inside: 36mm, outside: 26mm),
)
#set text(font: "Latin Modern Roman", lang: "cs", size: 12pt)
#set par(leading: 0.55em, first-line-indent: 2em, justify: true)
#show par: set block(spacing: 0.55em)


#set rect(
  width: 100%,
  inset: 12pt,
  stroke: (bottom: black + 0.15mm),
)

#let todo(term) = {
  text(white, box(width: 100%, fill: gradient.linear(..color.map.rainbow), inset: 1em)[To-udělat: #term])
}



#rect()[
  #align(center)[
    #text(16pt)[
      Mendelova univerzita v Brně\
      Provozně ekonomická fakulta
    ]
  ]
]
#v(56mm)
#align(center)[
  #text(24pt, weight: "bold")[
    ​​Detekce duplicit\
    v geoprostorových datech
  ]
]

#align(center)[
  #text(14pt, weight: "bold")[
    Diplomová práce
  ]
]
#v(64mm)

#grid(rows: 1, columns: (1fr, 1fr),
  grid.cell(align: left)[
    #text(14pt)[
      Vedoucí práce:\
      Ing. Pavel Turčínek, Ph.D.
    ]
  ],
  grid.cell(align: right + bottom)[
    #text(14pt)[
      Bc. Adam Prchal
    ]
  ]
)
#align(center + bottom)[
  #text(14pt)[
    #misto
  ]
]



#pagebreak(to: "odd")

#align(bottom)[
  #heading(level: 3, outlined: false)[
    Poděkování
  ]
  #todo("Poděkování")
]

#pagebreak(to: "odd")

#align(bottom)[
  #heading(level: 3, outlined: false)[
    Čestné prohlášení
  ]
  Prohlašuji, že jsem práci *#nazevPrace* vypracoval samostatně a veškeré použité prameny a informace uvádím
  v seznamu použité literatury. Souhlasím, aby moje práce byla zveřejněna v souladu
  s § 47b zákona č. 111/1998 Sb., o vysokých školách ve znění pozdějších předpisů
  a v souladu s platnou Směrnicí o zveřejňování závěrečných prací.

  Jsem si vědom, že se na moji práci vztahuje zákon č. 121/2000 Sb., autorský
  zákon, a že Mendelova univerzita v Brně má právo na uzavření licenční smlouvy
  a užití této práce jako školního díla podle § 60 odst. 1 autorského zákona.

  Dále se zavazuji, že před sepsáním licenční smlouvy o využití díla jinou osobou (subjektem) si vyžádám písemné stanovisko univerzity, že předmětná licenční
  smlouva není v rozporu s oprávněnými zájmy univerzity, a zavazuji se uhradit případný příspěvek na úhradu nákladů spojených se vznikem díla, a to až do jejich
  skutečné výše.

  #v(16mm)

  #grid(rows: 2, columns: (1fr, 40%),
    grid.cell(align: left + top)[
      #misto
    ],
    grid.cell(align: right + bottom)[
      #align(center)[
        #line(length: 100%, stroke: (thickness: 1pt, dash: "dotted"))
      ]
    ],
    grid.cell()[],
    grid.cell(align: right + bottom, inset: (top: 10pt))[
      #align(center)[
        #text(10pt)[podpis]
      ]
    ]
  )
]

#pagebreak(to: "odd")

#set rect(
  width: 100%,
  inset: (bottom: 1mm, left: 0pt, right: 0pt),
  stroke: (bottom: black + 0.2mm),
)

#set page(
  margin: (inside: 36mm, outside: 26mm, top: 40mm),
  header-ascent: 20%,
  header: rect()[
    #text(10pt)[#upper[Header]]
    #h(1fr)
    #text(12pt, weight: "bold")[#counter(page).display("1")]
  ],
)





#heading(level: 3, outlined: false)[
  Abstract
]
#todo("EN abstract")
#par(first-line-indent: 0pt)[
  *Key words:*\
  #todo("EN klíčová slova")
]

#v(16mm)

#heading(level: 3, outlined: false)[
  Abstrakt
]
#todo("CZ abstract")
#par(first-line-indent: 0pt)[
  *Klíčová slova:* \
  #todo("CZ klíčová slova")
]

#pagebreak(to: "odd")

#outline()

#set heading(numbering: "1.1  ")

#show heading.where(level: 1): it => {
  pagebreak(weak: true)
  it
}


= Úvod a cíl
== Úvod

Proč by bylo potřeba z konkrétního dokumentu rozpoznávat, zda jsem či nejsem
autorem textu? V mnoha případech může jít pouze o zvědavost, zda-li jsem schopný
uspět v testu autorství u vlastního dokumentu. Jindy může jít o soutěž v tom, kdo
dokáže nejlépe vyplnit daný test pro cizí práci a ukázat, že je schopný adaptovat
se cizímu stylu psaní. Nicméně podstatnějším důvodem pro rozpoznávání autorství
může být případ, kdy se snažíme obhájit práci, která byla označena jako _plagiát_.

Přesnou definici plagiátu lze nalézt v normě ČSN ISO 5127–2003, která říká:
„Představení duševního díla jiného autora půjčeného nebo napodobeného v celku
nebo z části, jako svého vlastního“. Plagiátorství jako činnost popisuje například
Masarykova univerzita na svých internetových stránkách jako „úmyslné kopírování
cizího textu a jeho vydávání za vlastní, nedbalé nebo nepřesné citování použité lite-
ratury, opomenutí citace (byť neúmyslné) některého využitého zdroje.“ (Masarykova
univerzita, 2022). Rozpoznání autorství pomoci testu by mohlo sloužit jako nástroj
k dokázání autorství v případech, kdy se nejedná o nedbalé, nepřesné či zapomenuté
citování, ale v případě, že osoba vydává ukradený obsah úmyslně za svůj.

Další uplatnění rozpoznání autorství lze nalézt v případě, že si osoba necha-
la napsat práci na zakázku. Na trhu existuje několik firem, které nabízejí služby
jako napsání seminárních, bakalářských a diplomových prací. Analýze tohoto trhu
se ve své diplomové práci s názvem Analýza trhu s podvodnými seminárními a zá-
věrečnými pracemi v ČR věnovala Ing. Veronika Králíková. Ta ve své práci nechala
vypracovat od dvou různých společností esej a srovnávala kvalitu těchto služeb.

Kvalita výsledných prací se velice lišila. Jedna práce byla kvalitativně srovna-
telná s prací, kterou běžně studenti odevzdávají, a u druhé nebylo dodrženo zadání
práce. (Králíková, 2017)

Existují nástroje sloužící pro rozpoznání plagiátu, ale v případě prací na za-
kázku mají malou šanci na odhalení. Jak uvádí ve své práci Králíková, v ČR se
pro detekci plagiátorství používají systémy jako například Theses.cz od Masaryko-
vi univerzity, které srovnávají textový obsah a hledají shodu s ostatními pracemi
(Králíková, 2017). Z toho vyplývá, že pokud je obsah práce na zakázku správně oci-
tovaný, nástroj práci nemusí označit jako plagiát. Pokud by však existovalo alespoň
podezření na takové podvodné jednání, mohlo by rozpoznání autorství posloužit ja-
ko částečný důkaz při zkoumání, zda osoba práci napsala sama či ji napsal někdo
jiný. #cite(<albayrak_duplicate_2022>)

Současná nabídka webových API#footnote[Application Programming Interface (rozhraní pro programování aplikací).
] pokrývá velký rozsah služeb, které by mohl
kdokoliv potřebovat k naplnění svého cíle. I přesto nelze pokrýt úplně všechny přípa-
dy a je zapotřebí vytvořit si vlastní webové API, které bude řešit specifické problémy
a nabízet službu, kterou zatím nikdo nenabízí.

= Pojmy
#todo("Napsat")

= Metodika
#todo("Napsat")

= Analýza problému
#todo("Napsat")

= Diskuze
#todo("Napsat")

= Závěr
#todo("Napsat")

#bibliography(title: "Literatura", "diplomka.bib", style: "iso-690-author-date")