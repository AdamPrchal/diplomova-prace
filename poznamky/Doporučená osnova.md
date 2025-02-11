### **1. Úvod** 

- Úvod do problematiky detekce duplicit v datech 
- Význam geoprostorových dat a jejich využití v praxi
- Cíle práce a výzkumné otázky
- Struktura práce

### **2. Literární rešerše a analýza problematiky**

- **Problematika detekce duplicit v datech**
    - Definice duplicit a jejich vznik
    - Dopady duplicit na analýzu a rozhodování
- **Přístupy k rozpoznávání duplicitních objektů**
    - Data matching, entity resolution, record linkage
    - Heuristické metody (např. Jaro-Winkler, Levenshtein, SNM)
    - Strojové učení a neuronové sítě v detekci duplicit
- **Specifika geoprostorových dat**
    - Struktura a formáty geoprostorových dat
    - Souřadnicové systémy a jejich vliv na detekci duplicit
    - Výzvy při detekci duplicit v geoprostorových datech
- **Analýza existujících nástrojů pro detekci duplicit**
    - Přehled open-source a komerčních řešení
    - Výhody a nevýhody jednotlivých nástrojů

### **3. Metodologie a návrh řešení**

- **Třídění geoprostorových dat podle jejich specifičnosti**
    - Typy geoprostorových dat a jejich vlastnosti
    - Vhodnost různých metod pro jednotlivé typy dat
- **Výběr metod pro detekci duplicit**
    - Kritéria pro výběr metod
    - Očekávané výhody a nevýhody vybraných přístupů
- **Plán experimentů a testování**
    - Výběr datových sad (otevřená data a data od CleverMaps)
    - Použité metriky hodnocení úspěšnosti (precision, recall, F1-score)
    - Implementační prostředí a použité technologie (např. Python, scikit-learn, GIS nástroje)

### **4. Experimentální část**

- **Příprava a analýza dat**
    - Předzpracování a čištění dat
    - Identifikace potenciálních duplicit
- **Implementace metod pro detekci duplicit**
    - Implementace tradičních heuristických metod
    - Implementace metod založených na strojovém učení
- **Testování a vyhodnocení výsledků**
    - Výsledky na otevřených datech
    - Výsledky na datech poskytnutých CleverMaps
    - Srovnání výkonu jednotlivých metod

### **5. Analýza výsledků a doporučení**

- Zhodnocení dosažených výsledků
- Srovnání efektivity různých metod
- Identifikace nejvhodnějších metod pro jednotlivé typy geoprostorových dat
- Možnosti optimalizace a dalšího vývoje

### **6. Závěr**

- Shrnutí hlavních poznatků práce
- Odpověď na výzkumné otázky
- Doporučení pro CleverMaps a další aplikace v praxi
- Možnosti dalšího výzkumu

### **7. Seznam literatury**

- Přehled odborných zdrojů, knih, článků a relevantních online materiálů

### **8. Přílohy (pokud relevantní)**

- Zdrojové kódy a implementované algoritmy
- Ukázky testovaných dat
- Doplňující vizualizace a tabulky