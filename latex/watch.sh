fswatch -e ".*" -i ".*/[^.]*\\.tex$" -i ".*/zdroje\\.csv$" -0 . | while read -d "" event
do
    if [[ "$event" =~ \.tex$ ]]; then
        xelatex main.tex
    elif [[ "$event" == *zdroje.csv ]]; then
        python3 csv_to_lit.py
        xelatex main.tex
    fi
done