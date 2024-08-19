#### Obsah
[Základní informace 1](https://docs.google.com/document/d/1AuJSFf5oJO6qO_xkb0vyxJLVmjEzTYiDzRDq2vcVyNE/edit#heading=h.dbfn6hhnw57)
[Jaký je současný stav poznání: 2](https://docs.google.com/document/d/1AuJSFf5oJO6qO_xkb0vyxJLVmjEzTYiDzRDq2vcVyNE/edit#heading=h.cxfrnazbyk0g)
[Popis novosti vyvíjeného řešení 2](https://docs.google.com/document/d/1AuJSFf5oJO6qO_xkb0vyxJLVmjEzTYiDzRDq2vcVyNE/edit#heading=h.5a1fpci5unwg)
[První etapa - kvalita dat a analýza DM 3](https://docs.google.com/document/d/1AuJSFf5oJO6qO_xkb0vyxJLVmjEzTYiDzRDq2vcVyNE/edit#heading=h.46pcbh3w5g03)
[Analýza datových sad na Data Marketplace 3](https://docs.google.com/document/d/1AuJSFf5oJO6qO_xkb0vyxJLVmjEzTYiDzRDq2vcVyNE/edit#heading=h.46eypqpdingf)
[Druhá etapa - zlepšení granularity dat 4](https://docs.google.com/document/d/1AuJSFf5oJO6qO_xkb0vyxJLVmjEzTYiDzRDq2vcVyNE/edit#heading=h.i7tg8alc1jah)
[Průzkum zdrojů dat pro Disaster Recovery 5](https://docs.google.com/document/d/1AuJSFf5oJO6qO_xkb0vyxJLVmjEzTYiDzRDq2vcVyNE/edit#heading=h.b4zh6d92ere6)
[Třetí etapa - implementace a trénování LLM 7](https://docs.google.com/document/d/1AuJSFf5oJO6qO_xkb0vyxJLVmjEzTYiDzRDq2vcVyNE/edit#heading=h.sdu2deou9d22)

## Základní informace

Produkt DM je používán klienty CleverMaps při tvorbě nových i rozšíření stávajících lokačních analýz. Nicméně tento produkt je v současné době pouze statickým obchodem, který umožňuje klientům koupit konkrétní datové sady. Každá datová sada obsahuje název, popis, zdroj, frekvenci aktualizací a seznam atributů. Součást DM je i doporučení, pro jaké usecasy se konkrétní datová sada hodí. Nicméně jednotlivé datové sady nejsou žádným způsobem propojeny. Při lokařní analýze je ovšem důležitá nejen přítomnost datové sady v projektu, ale i její propojení s jinými datovými sadami. Cílem projektu je rozšíření a zlepšení produktu Data Marketplace (DM) pomocí nástrojů umělé inteligence, strojového učení a statistické analýzy. Metody umělé inteligence mají velký potenciál automaticky najít vzory ve velkém množství dat a mohou mnohdy najít vzory, které mnohdy člověk není sám schopen najít. 

Projekt je rozdělen do několika etap. První etapa je zaměřena na zlepšení kvality dat nacházejících se na DM. Bude provedena analýza současného stavu datových sad z mnoha různých kritérií a doporučeny změny, které usnadní další etapy projektu. První etapa bude cílit i na kontrolu kvality dat.

Druhá etapa je zaměřena na tvorbu nových, sekundárních datových sad z již existujících. Každá datová sada má určitou granularitu dat. Granularita představuje geografickou úroveň po kterou jsou data dostupné (např. okres, kraj, obec nebo ulice). Cílem druhé etapy je prozkoumat metody pro zvýšení granularity dat a na vybraných datových sadách tyto metody aplikovat. Tímto krokem bude možné vytvořit nové datové sady s větší granularitou. 

Třetí etapa bude zaměřena na trénování LLM nad celým DM. Cílem této etapy je vytvořit mechanismus trénování a přetrénování LLM nad DM. Díky LLM bude možné jednoduše najít souvislosti mezi datovými sadami a také uživatelům DM doporučovat jiné datové sady na základě jejich potřeb. 

## Jaký je současný stav poznání:

#### jak doposud řešil hlavní uchazeč/partner, nebo doposud vůbec neřešili.
AI jako takové neřeší, takže popsat jak teď probíhá kontrola kvality dat. Granularitu také neřeší
#### jaká je aktuální situace na světové úrovni v řešené oblasti
Popíšeme z vědeckých článků jak se to dělá.
#### pokud lze, uvést příklady, jak se řeší daná problematika jinde, jaké jsou nedostatky, slabé stránky stávajícího stavu – proč je potřebné zkoumat nové řešení
Todo

## Popis novosti vyvíjeného řešení

#### Inovativnost výsledného produktu/výstupů projektu
- Zlepšení kvality dat
- Rozšíření nabídky nabízených datových sad díky granularitě dat
- Možnost doporučení konkrétních datových sad za pomoci AI
#### Zvýšené technické a/nebo funkční parametry proti stávajícím řešením žadatele
- Todo

#### Pokud má projekt pozitivní dopady na životní prostředí, popsat, specifikovat
- Asi nemá
#### Doložit nákresy, vizualizace apod.
- Vytvoříme
#### Přidaná hodnota nového produktu pro uživatele
- Lepší výběr dat, možnost dodatečného rozšíření datové základny, zlpešení lokační analýzy na základě lepšího použití dat. Navedení na možnou lokační analýzu důležitou pro uživatele. 
#### Jaké nové poznatky získáte řešením projektu?
- Všechny věděcké a implementační, takže metody pro zlepšení kvality dat, možnost tvorby nových datových sad, LLM a práce s nimi na lokačních datech.

#### Jaké metody, techniky (progresivní) VaV budete v projektu využívat?
- ???????

#### Propojení projektu s Průmyslem 4.0 (buď využití Průmyslu 4.0 při samostném VaV nebo výsledek projektu a jeho provázanost s Průmyslem 4.0) 
- Tohle asi obkecáme, musíme vymyslet

# První etapa - kvalita dat a analýza DM
## Analýza datových sad na Data Marketplace

První etapa projektu je zaměřena na zlepšení kvality dat na DM, včetně zlepšení kvality vstupních dat.  V rámci této etapy bude provedena analýza stávajících datových sad na DM. U každé datové sady budou identifikovány klíčové atributy a jejich návaznost na jiné datové sady na DM. Dále bude provedena analýza původu a kvality jednotlivých datových sad s cílem identifikovat klíčové problémy vstupních dat (např. duplicita…). 

Společnost CleverMaps se zabývá vývojem vlastní platformy pro řešení úloh v oblasti Location Intelligence (LI). Součástí platformy jsou jak různé softwarové nástroje, tak bohatý Data Marketplace. Nepřímou součástí platformy je také know-how v oblasti zpracování geoprostorových dat, které zahrnuje mnoho dílčích oblastí. Jednou z těchto dílčích oblastí jsou také procesy kontroly kvality dat, které mají přímý dopad na důvěryhodnost dat a následně spolehlivost analýz.

Oblast kontroly kvality dat zahrnuje řadu různých přístupů a metod, v současné době se
dynamicky rozrůstající o další z oblasti umělé inteligence a strojového učení. Cílem tohoto
projektu by byla analýza řešením kontroly kvality dat, ať už pomocí tradiční metod nebo moderních metod založených na strojovém učení a umělé inteligenci, což by mělo vést k větší automatizaci a zkvalitnění procesů kontrol kvality dat a tím ke zvýšení kredibility, konkurenceschopnosti a také větší úspěšnosti při akvizici nových zákazníků.

### Detekce duplicit, nebo také “data matching”, “record linkage” nebo “entity resolution”

Cílem je detekce stejných datových entit napříč různými datovými zdroji nebo i v rámci jednoho datového zdroje. Díky detekovaným entitám lze následně řešit problém duplicit. Důležitá je detekce na úrovni prostorové (geografické souřadnice) i neprostorové složky dat. 

Konkrétní příklad problému: Detekce duplicit při sloučení dat bodů zájmu (Points Of Interest) z různých zdrojů (OpenStreetMap, Overture Maps, web scraping…). Duplicity se mohou vyskytovat i v rámci jednoho datového zdroje, kdy jeden reálný objekt může existovat vícero záznamů (vliv chybné editace nebo cílená rozdílnost digitální reprezentace).

### Detekce anomálií
Cílem je detekce výrazně odlišných záznamů ve srovnání s ostatními podobnými záznamy nebo ve srovnání historického vývoje konkrétního záznamu. Příkladem může být detekce topologických anomálií u geografických objektů, tedy kontrola,  zda daný geografický objekt nevykazuje výrazně odlišné topologické charakteristiky ve srovnání s ostatními (např. bankomat vykazuje vysokou vzdálenost od ostatních bodů zájmu a nenachází se v intravilánu).

Konkrétní příklad problému: Detekce topologických anomálií u geografických objektů. Kontrola, zda daný geografický objekt nevykazuje výrazně odlišné topologické charakteristiky ve srovnání s ostatními (např. bankomat vykazuje vysokou vzdálenost od ostatních bodů zájmu a nenachází se v intravilánu).

### Cílem této části je tady především:
- Analýza stávajících datových sad z pohledu důvěryhodnosti a kvality.
- Identifikace současného propojení datových s důrazem na identifikaci nových souvislostí v datových sadách
- Identifikaci současných problémů při kontrole kvality dat
- Identifikaci vhodných typů kontrol a metod jejich řešení
# Druhá etapa - zlepšení granularity dat

Granularita, resp. mnohdy i neexistence dat je velkým problémem. Existuje mnoho datových vrstev, které se vztahují k velký územním celkům, jako jsou státy, kraje nebo města. Nicméně mnoho mapových pohledů potřebuje data pro mnohem menší územní celky. 

Díky zlepšení granularity dojde k velkému zlepšení práce s daty v celém systému. Bude možné definovat reálné mapové pohledy, které budou, s určitou statistickou přesností reprezentovat reálný stav. Nebude tedy nutné pro ověření kvality pohledů a pro výslendou analýzu generovat náhodná data, jak tomu bylo v prvním projektu.   

Metody pro zlepšení granularity obecně fungují tak, že je provedena regresní analýza na základě referenční datové vrstvy. Příkladem může být, kdy je nutné mapovat chudobu v různých částech afriky, nicméně není možné získat data s potřebnou granularitou. Proto jsou jako vzorová data použity ty, které ji mají (například data o populaci). 

  

Cíl aktivity

Cílem aktivity je prozkoumat a otestovat metody pro zlepšení granularity dat. Jednotlivé metody budou analyzovány, bude provedena jejich implementace (popřípadě využity běžné dostupné knihovny) a budou testovány na zvolených vzorcích dat. Na základě testování bude vyhodnocena jejich vhodnost pro konkrétní datové sady. Dalším cílem je vytvoření konkrétních datových sad s potřebnou granularitou. 

Tato aktivita bude úzce svázána s aktivitou “Průzkum zdrojů dat pro Disaster Recovery”.

  
  

Metody pro zlepšení granularity dat

Granularita dat představuje úroveň detailu, popřípadě jemnosti, s jakou jsou data shromažďována a zpracovávána. Granularita je velice důležitým pojmem v datové analýze, protože reprezentuje množství informací, které jsou k dispozici pro analýzu. Granularita dat tedy ovlivňuje kvalitu výsledné analýzy a tím pádem i rozhodnutí, která jsou na základě analýzu učiněna. Pokud je granularita dat příliš hrubá, může dojít k zanedbání důležitých informací. Jedním z příkladů může být mapování chudoby populace, kterou provádí Spojené národy. Pro výslednou analýzu není možné získat data s potřebnou granularitou, proto je nutné použít metody, které ji zlepší (https://openknowledge.worldbank.org/server/api/core/bitstreams/1d1fcadc-43e3-541b-8949-fea45dd2a528/content).  

  

Granularitu dat je možné zlěpšit několika způsoby. Tím nejběžnějším je použití většího množství dat, popřípadě úpravou metod pořízení dat. Díky tomu je možné výrazně zlepšit kvalitu dat pro pozdější analýzu. Nicméně pokud jsme v situaci, kdy není možné již do pořízení dat zasahovat, je nutné zvolit jiný přístup. 

  

V případě, že není možné zasahovat do pořízení dat, je možné zlepšit granularitu kombinací více zdrojů dat. Například, pokud jsou data shromažďována z různých regionů nebo z různých segmentů populace, může být možné kombinovat tyto informace, aby vznikla více detailní a podrobná analýza. Nejběžněji se na to používají metody Small Area Estimation (SAE). 

  

Cílem SAE metod odhadnout charakteristiky menšího celku dat (např. město v kontextu státu) na základě využití doplňkových dat, například populace. SAE metody běžně použivají ve statistických šetřeních, které jsou prováděna na velkých celcích, nicméně výsledná analýza musí reprezentovat i malé celky, tedy například čtvrti měst (https://projecteuclid.org/journals/statistical-science/volume-9/issue-1/Small-Area-Estimation-An-Appraisal/10.1214/ss/1177010647.full). Jako doplňková jsou nejčastěji používá administrativní data nebo data ze sčítání lidí (https://www.adb.org/sites/default/files/publication/609476/small-area-estimation-guide-nsos.pdf). 

  
  

Tato aktivita bude rozdělena do následujících částí:

Průzkum metod pro zlepšení granularity dat

Existuje mnoho SAE metod. Nejčastější jsou metody založené na regresních modelech, nicméně najdou se pokročilejší metody s využitím strojového učení. Obecně je možné metody rozdělit do třech kategorií:

- SAE metody s využitím pomocné informace.
    
- SAE metody s využitím regresních modelů.
    
- SAE metody s využitím strojového učení. 
    

V rámci této části budou jednotlivé metody prozkoumány a bude vybrán způsob jejich testování na vozorových datech. 

  

## Průzkum zdrojů dat pro Disaster Recovery

Na základě výše zmíněných omezení byly vybrány datové sady. Motivací k pokračování je nalezení dalších datových dat pro různá použití a neomezovat se pouze na ČR, ale soustředit se na celou evropu. Velice důležitou částí bude nejen nalezení dat, ale i jejich analýza s velkým důrazem na granularitu. 

  

Aktivita bude rozdělena do následujících částí:

- Průzkum dat v rámci ČR - budou analyzovány především státní datové zdroje (ministerstva, Portál otevřených dat (https://data.gov.cz/)). 
    
- Průzkum dat v rámci EU - budou analyzovány datové sady Evropské unie a jednotlivých států EU.
    
- Průzkum světových zdrojů dat - vhodná data pro EU je možné nalézt i v celosvětových trzích - například World Bank (https://data.worldbank.org/) nebo UN (https://data.un.org/). 
    

  
  

Cíl aktivity

Cílem aktivity je získat komplexní přehled o datových zdrojích pro zapojení do systému Disaster Recovery a to nejen v rámci ČR, ale především v rámci EU. Nalezené datové sady budou využity jednak pro mapové pohledy připravené pro potenciální klienty systému a dále jako podklady pro aktivitu Zlepšení granularity dat. Zde mohou sloužit jako doplňková data metod SAE popřípadě bude zkoumána možnost zvýšení jejich granularity a tím docíleno jejich větší zapojení do analýzy dat..

  
  

Průběh aktivity:

  

Průzkum datových zdrojů v rámci ČR

Budou prozkoumány datové zdroje dostupné v ČR. Především se budeme soustředit na ČSÚ a jednotlivá ministerstva. Součástí průzkumu bude i Portál otevřených dat (https://data.gov.cz/).  Na tomto portálu je možné najít mnoho otevřených dat. Cílem je vytvořit souhrnný popis těchto dat a kategorizovat je pro další použití. Důležitou kategorií bude jejich granularita v rámci územních celků ČR. Součástí analýzy ovšem bude i možnost získat data od státních organizací nebo i soukromého sektoru.

  

Kategorie, které budou důležité při posouzení kvality dat:

- Zdroj dat,
    
- Způsob pořízení,
    
- Granularita,
    
- Územní celistvost,
    
- Datová celistvost,
    
- Možnost použít data jako doplňková pro metody pro zlepšení granularity dat. 
    

  

Průzkum datových zdrojů v rámci EU

Cílovým trhem DR jsou především země EU. V rámci této části budou prozkoumány datové zdroje pro státy EU. Základem bude pochopitelně oficiální datový portál Evropské unie (https://data.europa.eu/en). Nicméně budeme zkoumat i datové zdroje pro jednotlivé státy EU. Především data z jejich statistických úřadů a státních organizací. Ideální bude pochopitelně nalézt a prozkoumat státní datové portály s otevřenými daty. Jednotlivé datové sady budou opět kategorizovány s důrazem na granularitu pro konkrétní územní celky jednotlivých států. 

  

Kategorie pro posouzení dat budou stejné jako v předchozí části.

  

Průzkum celosvětových datových zdrojů v návaznosti na země EU

Základem mnoha lokačních analýz jsou data z OpenStreetMap. Výhodou těchto dat je jejich dostupnost. Nicméně existují i celosvětové zdroje, ze kterých je možné čerpat data pro země EU. Jsou jimi například Světová banka (https://data.worldbank.org/) nebo spojené národy (https://data.un.org/).

  

Kategorie pro posouzení dat budou stejné jako v předchozí části.

  

Revize datových zdrojů 

Problematika datových zdrojů se hodně mění, proto bude nutné na konci projektu provést revizi výsledků v této aktivitě. Budou prozkoumány nalezené zdroje, jestli jsou aktivní a jestli u nich došlo ke změně. Díky revizi se zvýší připravenost systému na další rozvoj a nasazení u klienta. 

  
  

# Třetí etapa - implementace a trénování LLM

TODO Implementační část.
### Implementace metod do DR

Aby bylo možné jednotlivé metody důkladně otestovat a ověřit jejich vhodnost pro různé datové zdroje, bude nutné provést implementaci těchto metod. Implementace bude prováděna v jazyce Python pro lepší zapojení do systému Disaster recovery. Jednotlivé metody bude možné v rámci systému spouštět a výsledek pak vizualizovat přímo v mapovém pohledu. 
### Testování nalezených metod na nalezených datech

Jednotlivé metody a samozřejmě i implementaci je nutné důkladně otestovat. Bude provedeno především důkladné testování metody na konkrétních datech s přihlédnutím ke kvalitě výsledné datové sady.

### Dokumentace implementace a tvorba metodiky pro zlepšení granularity dat

Závěrečným výsledkem této aktivity bude kompletně zdokumentovaná implementace podle požadavků firmy CleverMaps. Dále bude vytvořen dokument, který bude sloužit jako návod pro další zlepšování granularity dat i mimo navrhovaný projekt. 
- Implementaci metod do procesu kontroly kvality dat

Články
[https://www.tandfonline.com/doi/full/10.1080/17538947.2023.2278895](https://www.tandfonline.com/doi/full/10.1080/17538947.2023.2278895)
[https://www.tandfonline.com/doi/full/10.1080/13658816.2023.2266495?src=recsys](https://www.tandfonline.com/doi/full/10.1080/13658816.2023.2266495?src=recsys)