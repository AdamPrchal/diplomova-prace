**Navrhovaný název práce:**
Detekce duplicit v geoprostorových datech společnosti CleverMaps 

**Předpokládaný cíl práce:**
Cílem této práce je prozkoumat a otestovat různé metody detekce duplicit v geoprostorových datech, včetně metod založených na strojovém učení, a na základě analýzy výsledků doporučit nejvhodnější metody pro konkrétní sady geoprostorových dat poskytnutých společností CleverMaps.
Výsledná doporučení by měla společnosti CleverMaps pomoci v rámci zvyšování automatizace a zkvalitnění procesů kontrol kvality dat.

**Návrh metodiky řešení včetně identifikace zkoumaného vzorku:**
Na začátku práce bude provedena literární rešerše. Ta bude zaměřena na identifikaci typů duplicit v datech a metod, pro jejich detekci. Rešerše zahrne jak metody založené na strojovém učení, tak jiné relevantní přístupy. Společně s tím budou popsány i nástroje, které lze použít pro implementaci těchto metod.

V rámci analýzy a přípravy dat bude proveden rozbor datových sad poskytnutých společností CleverMaps, pro lepší pochopení struktury a charakteristik konkrétních datových sad.

Na základě zjištění z literární rešerše a rozboru datových sad budou vybrány metody pro testování. Takto vybrané metody se následně naimplementují za použití příslušných algoritmů a nástrojů.

Takto naimplementované metody budou testovány na poskytnutých datových sadách. V této části tak budou zajištěny podklady pro analýzu výsledků a tvorbu doporučení. Mezi sbírané metriky úspěšnosti metod bude spadat například přesnost, úplnost a F-míra.

Po implementaci a testování metod se provede analýza výsledků testů a vyhodnotí se, které metody jsou pro detekci duplicit v poskytnutých datových sadách nejúčinnější. 

V závěrečné části práce budou podrobně shrnuty všechny metody testované během výzkumu, s důrazem na jejich efektivitu a aplikovatelnost pro konkrétní datové sady společnosti CleverMaps. Budou diskutovány výhody a možná omezení každé z metod. Na základě analýzy a výsledků testů budou formulována specifická doporučení pro společnost.

**Návrh literárních pramenů pro vypracování práce**
TODO

**Zamýšlený rozsah samostudia, zejména doplňující literatura pro prohloubení znalostí v oboru práce**
TODO

**Struktura práce**
- **Úvod a cíl práce** 
	- Seznámení čtenáře s tématem práce a stanovení cílů.
- **Literární rešerše** 
	- Zavedení pojmů a seznámení s problematikou.
- **Metodika práce**
	- Popis postupu práce.
- **Analýza a příprava dat**
	- Zkoumání datových sad od CleverMaps, jejich úprava a optimalizace pro další zpracování.
- **Výběr a implementace metod**
	- Rozhodování o nejvhodnějších metodách detekce duplicit a jejich aplikace na zvolené datové sady.
- **Testování a evaluace metod**
	- Provádění testů zvolených metod na datech a měření jejich výkonu pomocí relevantních metrik.
- **Analýza výsledků a formulace doporučení**
	- Interpretace získaných dat z testů, odvození závěrů a navrhování konkrétních kroků pro implementaci v CleverMaps.
- **Závěr a shrnutí**
	- Souhrn klíčových nálezů, ověření, zda byly splněny cíle práce, a úvaha nad případnými budoucími směry výzkumu v této oblasti.

**Harmonogram řešení**
TODO

**Vymezení řešeného problému v kontextu současného stavu poznání řešené problematiky s využitím odborné literatury, příp. (je-li to relevantní) formulace výzkumných otázek a hypotéz:**

V rámci získávání informací o prostředí a jeho hluboké analýze, kterému se nadává Location Intelligence se sbírají data. Mezi ty tada patří například pozice podniků v konkrétních městech, informace o velikosti parků či jiných veřejných prostorách a spoustu dalších dat, které reflektují místa na světě. Tyhle data se sbírají z několika zdrojů (OpenStreet Maps, Google Maps, Mapy.cz od Seznamu), aby mohla být analýza prostředí co nejpřesnější a vypovídající. Taková data se označují jako geodata nebo také geoprostorová data. 

Vzhledem k tomu, že je získáváno velké množství geodat z více zdrojů, dochází tak k tomu, že některé geodata jsou duplicitní tzn. že některé konkrétní entity, jako například identické restaurace, obchody, či jiné body zájmů, budou ve výsledné datové sadě více krát.
Tyto duplicity nemusí být snadno rozpoznatelné pomocí porovnání atributů těchto dat, jelikož se při zadávání konkrétního bodu zájmu mohou některé údaje napsat odlišně. Například na Mapy.cz může být název papírnictví zanesené jako "Papírnictví U Nováků", avšak například na Google Maps může mít identické papírnictví v názvu pouze "U Nováků" a informace o tom, že se jedná o papírnictví může být uvedena pouze jako kategorie podniku.

Máme nějaké typy duplicit TODO.
Typ 
Typ 
Typ

Běžné metody pro rozpoznání duplicit

Využití strojové učení pro detekci

Metriky pro měření úspěšnosti/spolehlivosti metod

Existující nástroje implementující metody nebo použitelné pro implementaci těcho 