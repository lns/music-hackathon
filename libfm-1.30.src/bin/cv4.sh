#!/bin/bash
./libFM -task r -train train00.libfm -test x00 -dim '1,1,8' -init_stdev 0.2 -iter 1000 -out p00 -meta metafile4
./libFM -task r -train train01.libfm -test x01 -dim '1,1,8' -init_stdev 0.2 -iter 1000 -out p01 -meta metafile4
./libFM -task r -train train02.libfm -test x02 -dim '1,1,8' -init_stdev 0.2 -iter 1000 -out p02 -meta metafile4
./libFM -task r -train train03.libfm -test x03 -dim '1,1,8' -init_stdev 0.2 -iter 1000 -out p03 -meta metafile4
./libFM -task r -train train04.libfm -test x04 -dim '1,1,8' -init_stdev 0.2 -iter 1000 -out p04 -meta metafile4
./libFM -task r -train train05.libfm -test x05 -dim '1,1,8' -init_stdev 0.2 -iter 1000 -out p05 -meta metafile4
./libFM -task r -train train06.libfm -test x06 -dim '1,1,8' -init_stdev 0.2 -iter 1000 -out p06 -meta metafile4
./libFM -task r -train train07.libfm -test x07 -dim '1,1,8' -init_stdev 0.2 -iter 1000 -out p07 -meta metafile4
./libFM -task r -train train08.libfm -test x08 -dim '1,1,8' -init_stdev 0.2 -iter 1000 -out p08 -meta metafile4
./libFM -task r -train train09.libfm -test x09 -dim '1,1,8' -init_stdev 0.2 -iter 1000 -out p09 -meta metafile4
cat p00 p01 p02 p03 p04 p05 p06 p07 p08 p09 > predict.mcmc2
./libFM -task r -train train.csv.libfm3 -test test.csv.libfm3 -dim '1,1,8' -init_stdev 0.2 -iter 1000 -out submit.mcmc2 -meta metafile4
