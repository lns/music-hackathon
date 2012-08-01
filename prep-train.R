train = read.csv("train.csv")

usermean = rep(-1,50928)
for(i in 0:50927 ){
	usermean[i+1] = mean(train$Rating[train$User==i])
}
trackmean = rep(-1,184)
for(i in 0:183 ){
	trackmean[i+1] = mean(train$Rating[train$Track==i])
}
artistmean = rep(-1,50)
for(i in 0:49 ){
	artistmean[i+1] = mean(train$Rating[train$Artist==i])
}

user = train$User
artist = train$Artist
track = train$Track

real = train$Rating
pred_mcmc = read.csv("./libfm-1.30.src/bin/predict.mcmc",header=FALSE)[,1]
pred_als = read.csv("./libfm-1.30.src/bin/predict.als",header=FALSE)[,1]
pred_sgd = read.csv("./libfm-1.30.src/bin/predict.sgd",header=FALSE)[,1]
pred_mcmc2 = read.csv("./libfm-1.30.src/bin/predict.mcmc2",header=FALSE)[,1]
lm1 = lm(real~pred_mcmc+pred_als+pred_sgd+pred_mcmc2)
print(lm1$coefficients)
target = real-lm1$fitted.values
write.csv(cbind(target,pred_mcmc,pred_sgd,pred_als,pred_mcmc2,artistmean[artist+1],trackmean[track+1]),"temp4.csv",row.names=FALSE)

factor_artist = matrix(rep(-1,50*dim(train)[1]),ncol=50)
for(i in 1:50 ){
	factor_artist[,i] = ifelse(artist==(i-1),1,0)
}

write.csv(factor_artist,"factor_artist.csv",row.names=FALSE)
