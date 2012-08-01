#!/bin/bash
./libFM -task r -train train00.libfm -test x00 -method sgd -learn_rate 0.0001 -regular '0,0,3' -iter 1000 -dim '1,1,12' -out p00 -meta metafile -init_stdev 0.5
./libFM -task r -train train01.libfm -test x01 -method sgd -learn_rate 0.0001 -regular '0,0,3' -iter 1000 -dim '1,1,12' -out p01 -meta metafile -init_stdev 0.5
./libFM -task r -train train02.libfm -test x02 -method sgd -learn_rate 0.0001 -regular '0,0,3' -iter 1000 -dim '1,1,12' -out p02 -meta metafile -init_stdev 0.5
./libFM -task r -train train03.libfm -test x03 -method sgd -learn_rate 0.0001 -regular '0,0,3' -iter 1000 -dim '1,1,12' -out p03 -meta metafile -init_stdev 0.5
./libFM -task r -train train04.libfm -test x04 -method sgd -learn_rate 0.0001 -regular '0,0,3' -iter 1000 -dim '1,1,12' -out p04 -meta metafile -init_stdev 0.5
./libFM -task r -train train05.libfm -test x05 -method sgd -learn_rate 0.0001 -regular '0,0,3' -iter 1000 -dim '1,1,12' -out p05 -meta metafile -init_stdev 0.5
./libFM -task r -train train06.libfm -test x06 -method sgd -learn_rate 0.0001 -regular '0,0,3' -iter 1000 -dim '1,1,12' -out p06 -meta metafile -init_stdev 0.5
./libFM -task r -train train07.libfm -test x07 -method sgd -learn_rate 0.0001 -regular '0,0,3' -iter 1000 -dim '1,1,12' -out p07 -meta metafile -init_stdev 0.5
./libFM -task r -train train08.libfm -test x08 -method sgd -learn_rate 0.0001 -regular '0,0,3' -iter 1000 -dim '1,1,12' -out p08 -meta metafile -init_stdev 0.5
./libFM -task r -train train09.libfm -test x09 -method sgd -learn_rate 0.0001 -regular '0,0,3' -iter 1000 -dim '1,1,12' -out p09 -meta metafile -init_stdev 0.5
cat p00 p01 p02 p03 p04 p05 p06 p07 p08 p09 > predict.sgd
./libFM -task r -train train.csv.libfm -test test.csv.libfm -method sgd -learn_rate 0.0001 -regular '0,0,3' -iter 1000 -dim '1,1,12' -out submit.sgd -meta metafile -init_stdev 0.5
