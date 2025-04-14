#!/bin/bash

cd `dirname $0`

git pull

cd datasheet_en
# https://www.wch-ic.com/downloads/CH32V103DS0_PDF.html
curl -z CH32V103DS0.PDF -o CH32V103DS0.PDF https://www.wch-ic.com/downloads/file/312.html
# https://www.wch-ic.com/downloads/CH32xRM_PDF.html
curl -z CH32xRM.PDF -o CH32xRM.PDF https://www.wch-ic.com/downloads/file/306.html
cd ..

cd datasheet_zh
# https://www.wch.cn/downloads/CH32V103DS0_PDF.html
curl -z CH32V103DS0.PDF -o CH32V103DS0.PDF https://www.wch.cn/download/file?id=311
# https://www.wch.cn/downloads/CH32xRM_PDF.html
curl -z CH32xRM.PDF -o CH32xRM.PDF https://www.wch.cn/download/file?id=328
cd ..

# https://www.wch.cn/downloads/CH32V103EVT_ZIP.html
curl -z CH32V103EVT.ZIP -o CH32V103EVT.ZIP https://www.wch.cn/download/file?id=326
rm -rfv EVT
unzip -O GB2312 *.ZIP

git add . --all
git commit -m "update"
git push origin main
