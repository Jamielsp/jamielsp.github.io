mkdir pdfs
file_counter=$(find site -name *.pdf | wc -l)

files=$(find site -name *.pdf)

mv $files pdfs/
