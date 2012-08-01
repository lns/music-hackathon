train = read.csv("train.csv")
real = train$Rating
pred_mcmc = read.csv("./libfm-1.30.src/bin/predict.mcmc",header=FALSE)[,1]
pred_als = read.csv("./libfm-1.30.src/bin/predict.als",header=FALSE)[,1]
pred_sgd = read.csv("./libfm-1.30.src/bin/predict.sgd",header=FALSE)[,1]]
pred_mcmc2 = read.csv("./libfm-1.30.src/bin/predict.mcmc2",header=FALSE)[,1]
lm1 = lm(real~pred_mcmc+pred_als+pred_sgd+pred_mcmc2)
submit_mcmc = read.csv("submit.mcmc",header=FALSE)[,1]
submit_sgd = read.csv("submit.sgd",header=FALSE)[,1]
submit_als = read.csv("submit.als",header=FALSE)[,1]
submit_mcmc2 = read.csv("submit.mcmc2",header=FALSE)[,1]

submit_lm = cbind(rep(1,length(submit_mcmc)),submit_mcmc,submit_sgd,submit_als,submit.mcmc2)%*%lm1$coefficient

write.csv(submit_lm,"submit.lm",row.names=FALSE)
