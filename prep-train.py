#!/usr/bin/python

def combine(file1,file2):
	"combine file1, train2[,4:], factor_artist to file2"
	f1 = open(file1,"r")
	f2 = open(file2,"w")
	train2 = open("train.csv.enlarged.csv","r")
	fac_art = open("factor_artist.csv","r")
	s = f1.readline()
	f2.write(','.join([s[:-1],','.join(['""']*202),fac_art.readline()]))
	s = f1.readline()
	while s!='':
		f2.write(','.join([s[:-1],','.join(train2.readline()[:-1].split(' ')[3:]),fac_art.readline()]))
		s = f1.readline()
	f1.close()
	f2.close()
	train2.close()
	fac_art.close()

if __name__ == '__main__':
	combine("temp4.csv","train4.csv")
	
