library(gbm)
train4 = read.csv("train4.csv")
gbm1 = gbm(target~.,data=train4,distribution="gaussian",n.trees=2000,shrinkage=0.02,interaction.depth=6,n.minobsinnode=3)
remove(train4)
test4 = read.csv("test4.csv")
temp = predict.gbm(gbm1,test4,2000)
submit.lm = read.csv("submit.lm")
submit.final = submit.lm + temp
write.csv(submit.final,"submit.final",row.names=FALSE)
