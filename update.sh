#!/bin/bash

cd `dirname $0`

git pull

cd datasheet_en
# https://www.wch-ic.com/downloads/CH32V103DS0_PDF.html
wget --continue https://www.wch-ic.com/downloads/file/312.html -O CH32V103DS0.PDF
# https://www.wch-ic.com/downloads/CH32xRM_PDF.html
wget --continue https://www.wch-ic.com/downloads/file/306.html -O CH32xRM.PDF
cd ..

cd datasheet_zh
# https://www.wch.cn/downloads/CH32V103DS0_PDF.html
wget --continue https://www.wch-ic.com/downloads/file/311.html -O CH32V103DS0.PDF
# https://www.wch.cn/downloads/CH32xRM_PDF.html
wget --continue https://www.wch-ic.com/downloads/file/328.html -O CH32xRM.PDF
cd ..

# https://www.wch.cn/downloads/CH32V103EVT_ZIP.html
wget --continue https://www.wch.cn/downloads/file/326.html -O CH32V103EVT.ZIP
rm -rfv EVT
unzip *.ZIP

git add . --all
git commit -m "update"
git push origin main
