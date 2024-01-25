@echo off
call ng build --output-path docs --base-href /foodflow/
echo "continuamos...."
git add .
git commit -m %1
git push