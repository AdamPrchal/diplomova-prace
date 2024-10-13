latexmk -xelatex main.tex
fswatch -e ".*" -i ".*/[^.]*\\.tex$" -i ".*/zdroje\\.csv$" -0 . | while read -d "" event
do
    if [[ "$event" =~ \.tex$ ]]; then
        latexmk -xelatex main.tex
    elif [[ "$event" == *zdroje.csv ]]; then
        python3 csv_to_lit.py
        latexmk -xelatex main.tex
    fi
done