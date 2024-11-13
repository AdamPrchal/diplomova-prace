import csv
import os
from functools import cmp_to_key

dir_path = os.path.dirname(os.path.realpath(__file__))


# Funkce pro porovnání citací na základě autora
def compare(item1, item2):
    author1 = item1.split("\\autor{")[1].split("}")[0]
    author2 = item2.split("\\autor{")[1].split("}")[0]
    print(author1, ":::::", author2)
    
    return (author1 > author2) - (author1 < author2)


# Funkce pro formátování citací dle typu
def format_citation(row, citation_type):
    year = row["Publication Year"]
    author: str = row.get("Author", row.get("Title", "Neznámý autor")).split(",")[0]
    date_added = row["Date Added"].split(" ")[0]
    title: str = row["Title"]
    url = row["Url"].replace("%", "\\%")
    citation_slug = f'{author.split(" ")[0].lower()}_{"_".join([word for word in title.lower().split(":")[0].split(" ")[:2]])}_{year}'
    
    match citation_type:
        case "webpage":
            return (
                f"\\citace{{{citation_slug}}}{{{author}, {year}}}"
                f"{{\\autor{{{row['Author']}}} \\nazev{{{title}}} [online]. "
                f"{year} [cit. {date_added}]. Dostupné z: \\url{{{url}}}.}}\n"
            )

        case "thesis":
            return (
                f"\\citace{{{citation_slug}}}{{{author}, {year}}}"
                f"{{\\autor{{{row['Author']}}} \\nazev{{{title}}}. "
                f"{row['Place']}, {year}. {row['Type']}. {row['Publisher']}. "
                f"{row['Extra']} Dostupné z: \\url{{{url}}}.}}\n"
            )

        case "book":
            return (
                f"\\citace{{{citation_slug}}}{{{author}, {year}}}"
                f"{{\\autor{{{row['Author']}}} \\nazev{{{title}}}. "
                f"{row['Place']}, {year}. {row['Num Pages']}~s. "
                f"ISBN {row['ISBN']}.}}\n"
            )

        case "journalArticle":
            return (
                f"\\citace{{{citation_slug}}}{{{author}, {year}}}"
                f"{{\\autor{{{row['Author']}}} \\nazev{{{title}}}. "
                f"{row['Publication Title']}. {year}, roč. {row["Volume"]}. "
                f"ISSN {row['ISSN']}. Dostupné z: \\url{{{url}}}.}}\n"
            )

    return ""


# Funkce pro převod CSV na TeX
def csv_to_lit(zotero_file=f"{dir_path}/Diplomka.csv", tex_file="../src/literatura.tex"):
    lines = []

    # Čtení nového CSV souboru
    with open(zotero_file, mode="r") as csv_file:
        csv_reader = csv.DictReader(csv_file)
        for row in csv_reader:
            if row["Date"]:
                match row["Item Type"]:
                    case "webpage" | "computerProgram" | "blogPost":
                        lines.append(format_citation(row, "webpage"))
                    case "thesis":
                        lines.append(format_citation(row, "thesis"))
                    case "book":
                        lines.append(format_citation(row, "book"))
                    case "journalArticle":
                        lines.append(format_citation(row, "journalArticle"))

    # Seřazení citací podle autora
    lines.sort(key=cmp_to_key(compare))

    # Zapsání výsledku do TeX souboru
    with open(tex_file, "w") as file:
        file.write("\\begin{literatura}\n")
        file.writelines(lines)
        file.write("\\end{literatura}\n")


print(dir_path)

csv_to_lit()
