latexmk -xelatex main.tex
fswatch -e ".*" -i ".*/[^.]*\\.tex$" -i ".*/My Library\\.csv$" -0 . | while read -d "" event
do
    if [[ "$event" =~ \.tex$ ]]; then
        latexmk -quiet -xelatex main.tex
    elif [[ "$event" == *zdroje.csv ]]; then
        python3 ./zotero_bridge/main.py
        latexmk -quiet -xelatex main.tex
    fi
done