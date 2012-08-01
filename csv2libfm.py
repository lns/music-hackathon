#!/usr/bin/python
# -*- coding:utf-8 -*-

def train2libfm(name):
	f = open(name,"r")
	g = open(name+".libfm","w")
	f.readline()
	l = f.readlines()
	for line in l:
		(artist,track,user,rating,time) = line[:-1].split(',')
		g.write(' '.join([rating,artist+':1',str(int(track)+50)+':1',str(int(user)+50+184)+':1'])+'\n')
	g.close()

def test2libfm(name):
	f = open(name,"r")
	g = open(name+".libfm","w")
	f.readline()
	l = f.readlines()
	for line in l:
		(artist,track,user,time) = line[:-1].split(',')
		g.write(' '.join(["0",artist+':1',str(int(track)+50)+':1',str(int(user)+50+184)+':1'])+'\n')
	g.close()

if __name__ == '__main__':
	train2libfm("train.csv")
	test2libfm("test.csv")
