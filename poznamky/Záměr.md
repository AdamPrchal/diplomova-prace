**Navrhovaný název práce:**
Detekce duplicit v geoprostorových datech společnosti CleverMaps 

**Předpokládaný cíl práce:**
Cílem této práce je prozkoumat a otestovat různé metody detekce duplicit na geoprostorových datech, včetně metod založených na strojovém učení. Na základě analýzy výsledků testů doporučit nejvhodnější metody pro konkrétní sady geoprostorových dat poskytnutých společností CleverMaps.
Výsledná doporučení by měla společnosti CleverMaps pomoci v rámci zvyšování automatizace a zkvalitnění procesů kontrol kvality dat.

**Návrh metodiky řešení včetně identifikace zkoumaného vzorku:**
Na začátku práce bude provedena literární rešerše. Ta bude zaměřena na identifikaci typů duplicit v datech a metod, pro jejich detekci. Rešerše zahrne jak metody založené na strojovém učení, tak jiné relevantní přístupy. Společně s tím budou popsány i nástroje, které lze použít pro implementaci těchto metod.

V rámci analýzy a přípravy dat bude proveden rozbor datových sad poskytnutých společností CleverMaps, pro lepší pochopení struktury a charakteristik konkrétních datových sad.

Na základě zjištění z literární rešerše a rozboru datových sad budou vybrány metody pro testování. Takto vybrané metody se následně naimplementují za použití příslušných algoritmů a nástrojů.

Takto naimplementované metody budou testovány na poskytnutých datových sadách. V této části tak budou zajištěny relevantní podklady pro analýzu výsledků a tvorbu doporučení.

Po implementaci a testování metod se provede analýza výsledků testů a vyhodnotí se, které metody jsou pro detekci duplicit v poskytnutých datových sadách nejúčinnější na základě relevantních metrik.

V závěrečné části práce budou shrnuty všechny testované metody, s důrazem na jejich efektivitu a aplikovatelnost pro konkrétní datové sady společnosti CleverMaps. Budou diskutovány výhody a možná omezení každé z metod. Na základě analýzy a výsledků testů budou formulována specifická doporučení pro společnost.

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

Společnost CleverMaps využívá svou platformu Location Intelligence k poskytování komplexních geoprostorových analýz, což je klíčové pro efektivní rozhodování v různých oblastech podnikání. Jako součást jejich platformy CleverMaps nabízí službu zvanou Data Marketplace, která umožňuje uživatelům přistupovat a integrovat různorodé datové sady. Tento marketplace poskytuje širokou škálu dat, včetně demografických informací, což klientům umožňuje získat přesné a cílené informace pro jejich specifické potřeby. (Clever Maps, 2024)

Vzhledem k tomu, že při práci (nejen) s geodaty se často zapracovávají informace získané z různých zdrojů, nastává to, že se totožné údaje ve shromážděných datech mohou objevovat vícekrát. Tento jev se označuje jako duplicita. Tyto duplicity mohou nastat z mnoha důvodů a mohou mít různé podoby. Příkladem může být situace, kdy jsou stejná místa nebo objekty zaznamenány pod různými názvy v různých databázích. Například, jedna databáze může obsahovat bod zájmu (POI) jako "Hlavní městský park", zatímco druhá jej může uvádět jako "Park v centru města". Obě tato označení se mohou vztahovat ke stejnému místu, ale různé názvy komplikují jejich rozpoznání jako duplicit. Další běžnou příčinou je chybné zadání dat, kde se například dva různé záznamy pro stejnou ulici mohou lišit pouze malými typografickými chybami nebo odlišnými způsoby zkrácení názvů. (Felix Naumann 2010)

Pro udržení integrity a přesnosti geodat je detekce a řešení duplicit nezbytná. K identifikaci duplicit mohou být využity různé metody, od jednoduchých porovnání řetězců až po sofistikovanější techniky, jako jsou algoritmy strojového učení a neuronové sítě. Tyto pokročilé metody umožňují rozpoznávat a porovnávat podobnosti na základě kontextu a pravděpodobnosti, což vede k efektivnějšímu a přesnějšímu detekování duplicit. (Peter Christen 2012)

V oblasti detekce duplicit existuje řada služeb, které nabízejí pokročilé řešení tohoto problému. Tyto služby jsou často založené na cloud technologiích a strojovém učen. Jsou schopné efektivně identifikovat a eliminovat duplicity v rozsáhlých datových sadách. Mezi poskytovatele těchto služeb patří například služby Data Ladder, Tilores a Melissa, které nabízejí různé nástroje pro automatickou detekci a správu duplicitních záznamů.

Ačkoliv tyto služby přinášejí významné výhody v podobě úspory času a zlepšení kvality dat, mohou být spojeny s vysokými náklady, zejména v případech, kdy je zapotřebí zpracovat velké objemy dat. Finanční zátěž z těchto služeb může být pro některé společnosti značná, což je může motivovat k implementaci vlastního řešení.