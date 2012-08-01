#!/bin/bash
./libFM -task r -train train00.libfm -test x00 -method als -regular 300 -dim '1,1,8' -iter 200 -out p00 -meta metafile -init_stdev 0.5
./libFM -task r -train train01.libfm -test x01 -method als -regular 300 -dim '1,1,8' -iter 200 -out p01 -meta metafile -init_stdev 0.5
./libFM -task r -train train02.libfm -test x02 -method als -regular 300 -dim '1,1,8' -iter 200 -out p02 -meta metafile -init_stdev 0.5
./libFM -task r -train train03.libfm -test x03 -method als -regular 300 -dim '1,1,8' -iter 200 -out p03 -meta metafile -init_stdev 0.5
./libFM -task r -train train04.libfm -test x04 -method als -regular 300 -dim '1,1,8' -iter 200 -out p04 -meta metafile -init_stdev 0.5
./libFM -task r -train train05.libfm -test x05 -method als -regular 300 -dim '1,1,8' -iter 200 -out p05 -meta metafile -init_stdev 0.5
./libFM -task r -train train06.libfm -test x06 -method als -regular 300 -dim '1,1,8' -iter 200 -out p06 -meta metafile -init_stdev 0.5
./libFM -task r -train train07.libfm -test x07 -method als -regular 300 -dim '1,1,8' -iter 200 -out p07 -meta metafile -init_stdev 0.5
./libFM -task r -train train08.libfm -test x08 -method als -regular 300 -dim '1,1,8' -iter 200 -out p08 -meta metafile -init_stdev 0.5
./libFM -task r -train train09.libfm -test x09 -method als -regular 300 -dim '1,1,8' -iter 200 -out p09 -meta metafile -init_stdev 0.5
cat p00 p01 p02 p03 p04 p05 p06 p07 p08 p09 > predict.als
./libFM -task r -train train.csv.libfm -test test.csv.libfm -method als -regular 300 -dim '1,1,8' -iter 200 -out submit.als -meta metafile -init_stdev 0.5
