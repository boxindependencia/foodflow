@echo off
echo "Compilando....."
call ng build --base-href /foodflow/
echo "copiando archivos finales a carpeta docs"
del docs\* /q /s
echo "continuamos...."
move dist\foodflow\browser\* docs
pause
git add .
git commit -m %1
git push