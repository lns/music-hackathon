#!/bin/bash
cat x00 x01 x02 x03 x04 x05 x06 x07 x08 > train09.libfm
cat x00 x01 x02 x03 x04 x05 x06 x07 x09 > train08.libfm
cat x00 x01 x02 x03 x04 x05 x06 x08 x09 > train07.libfm
cat x00 x01 x02 x03 x04 x05 x07 x08 x09 > train06.libfm
cat x00 x01 x02 x03 x04 x06 x07 x08 x09 > train05.libfm
cat x00 x01 x02 x03 x05 x06 x07 x08 x09 > train04.libfm
cat x00 x01 x02 x04 x05 x06 x07 x08 x09 > train03.libfm
cat x00 x01 x03 x04 x05 x06 x07 x08 x09 > train02.libfm
cat x00 x02 x03 x04 x05 x06 x07 x08 x09 > train01.libfm
cat x01 x02 x03 x04 x05 x06 x07 x08 x09 > train00.libfm
