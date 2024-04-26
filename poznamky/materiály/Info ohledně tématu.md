# Detekce duplicit a anomálií

Společnost CleverMaps se zabývá vývojem vlastní platformy pro řešení úloh v oblasti Location Intelligence (LI). Součástí platformy jsou jak různé softwarové nástroje, tak bohatý Data Marketplace. Nepřímou součástí platformy je také know-how v oblasti zpracování geoprostorových dat, které zahrnuje mnoho dílčích oblastí. Jednou z těchto dílčích oblastí jsou také procesy kontroly kvality dat, které mají přímý dopad na důvěryhodnost dat a následně spolehlivost analýz.

Oblast kontroly kvality dat zahrnuje řadu různých přístupů a metod, v současné době se dynamicky rozrůstající o další z oblasti umělé inteligence a strojového učení. Cílem tohoto projektu by byla analýza řešením kontroly kvality dat, ať už pomocí tradiční metod nebo moderních metod založených na strojovém učení a umělé inteligenci, což by mělo vést k větší automatizaci a zkvalitnění procesů kontrol kvality dat a tím ke zvýšení kredibility, konkurenceschopnosti a také větší úspěšnosti při akvizici nových zákazníků.

Cílem práce by bylo prozkoumat a otestovat současné metody pro detekci duplicit a anomálií v datech a vybrat ty nejlepší pro konkrétní datové sady poskytnuté firmou. 

## Detekce duplicit, nebo také “data matching”, “record linkage” nebo “entity resolution”

Cílem je detekce stejných datových entit napříč různými datovými zdroji nebo i v rámci jednoho datového zdroje. Díky detekovaným entitám lze následně řešit problém duplicit. Důležitá je detekce na úrovni prostorové (geografické souřadnice) i neprostorové složky dat. 

Konkrétní příklad problému: Detekce duplicit při sloučení dat bodů zájmu (Points Of Interest) z různých zdrojů (OpenStreetMap, Overture Maps, web scraping…). Duplicity se mohou vyskytovat i v rámci jednoho datového zdroje, kdy jeden reálný objekt může existovat vícero záznamů (vliv chybné editace nebo cílená rozdílnost digitální reprezentace).

## Detekce anomálií
Cílem je detekce výrazně odlišných záznamů ve srovnání s ostatními podobnými záznamy nebo ve srovnání historického vývoje konkrétního záznamu. Příkladem může být detekce topologických anomálií u geografických objektů, tedy kontrola,  zda daný geografický objekt nevykazuje výrazně odlišné topologické charakteristiky ve srovnání s ostatními (např. bankomat vykazuje vysokou vzdálenost od ostatních bodů zájmu a nenachází se v intravilánu).

Konkrétní příklad problému: Detekce topologických anomálií u geografických objektů. Kontrola, zda daný geografický objekt nevykazuje výrazně odlišné topologické charakteristiky ve srovnání s ostatními (např. bankomat vykazuje vysokou vzdálenost od ostatních bodů zájmu a nenachází se v intravilánu).