#!/bin/bash
R -q -f prep-words.R
R -q -f prep-users.R
python csv2csv.py
python csv2libfm.py
python csv2libfm3.py
split -l 18869 -d train.libfm
mv x?? libfm-1.30.src/bin/
cd libfm-1.30.src/bin/
ln -s ../../*.libfm ./
prepare.sh
cv.sh
cv2.sh
cv3.sh
cd ../..
split -l 18869 -d train.libfm3
mv x?? libfm-1.30.src/bin/
cd libfm-1.30.src/bin/
ln -s ../../*.libfm3 ./
prepare.sh
cv4.sh
cd ../..
ln -s libfm-1.30.src/bin/submit.* ./
R -q -f prep-submit.R
R -q -f prep-train.R
python prep-train.py
R -q -f prep-test.R
python prep-test.py
rm temp4.csv
R -q -f boost.R
