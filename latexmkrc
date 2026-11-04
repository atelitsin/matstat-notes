# Сборка: latexmk  (или latexmk -pvc для автопересборки при сохранении)
@default_files = ('main.tex');
$pdf_mode = 1;            # pdflatex
$out_dir = 'build';       # все вспомогательные файлы и PDF — в build/
$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 -file-line-error %O %S';
