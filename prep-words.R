words = read.csv("words.csv")
n = dim(words)[1]

tagmean = colSums(words[,6:87],na.rm=TRUE )
tagmean = tagmean/n

lv = levels(words$HEARD_OF)
heard_of = matrix(rep(0,n*length(lv)),ncol=length(lv))
for(i in 1:length(lv)){
	heard_of[,i] = ifelse(words$HEARD_OF==lv[i],1,0)
}

lv = levels(words$OWN_ARTIST_MUSIC)
own_artist_music = matrix(rep(0,n*length(lv)),ncol=length(lv))
for(i in 1:length(lv)){
	own_artist_music[,i] = ifelse(words$OWN_ARTIST_MUSIC==lv[i],1,0)
}

mean_like_artist = mean(words$LIKE_ARTIST,na.rm=TRUE)
like_artist = matrix(ifelse(is.na(words$LIKE_ARTIST),mean_like_artist,words$LIKE_ARTIST/100),ncol=1)

for(i in 6:87 ){
	words[is.na(words[,i]),i] = tagmean[i-5]
}

newwords = cbind(words[,1:2],heard_of,own_artist_music,like_artist,words[,6:87])
write.csv(newwords,"newwords.csv",row.names=FALSE)

