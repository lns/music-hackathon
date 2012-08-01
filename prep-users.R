users = read.csv("users.csv")
users = users[order(users$RESPID),]

gender = ifelse(is.na(users$GENDER),-1,ifelse(users$GENDER=="Male",1,0))

agemean = c(0,2156,3663,5908,3785,4376,4773,5131,4168,4120,3854,3845,1454,626,229,81,8,1,0,0)
agemean = agemean/sum(agemean)

age = matrix(rep(-1,20*48645),ncol=20)
for(i in 1:20 ){
	age[,i] = ifelse(is.na(users$AGE),agemean[i],ifelse((users$AGE>=5*i & users$AGE<5*(i+1)),1,0))
}
work = matrix(rep(-1,14*48645),ncol=14)
lv = levels(users$WORKING)
for(i in 1:14 ){
	work[,i] = ifelse(users$WORKING==lv[i],1,0)
}

lv = levels(users$REGION)
region = matrix(rep(-1,length(lv)*48645),ncol=length(lv))
for(i in 1:length(lv)){
	region[,i] = ifelse(users$REGION==lv[i],1,0)
}

lv = levels(users$MUSIC)
music = matrix(rep(-1,length(lv)*48645),ncol=length(lv))
for(i in 1:length(lv)){
	music[,i] = ifelse(users$MUSIC==lv[i],1,0)
}

list_own = matrix(rep(-1,20*48645),ncol=20)
list_own[,1] = ifelse(users$LIST_OWN=="",1,0)
list_own[,2] = ifelse((users$LIST_OWN=="0" | users$LIST_OWN=="0 Hours" | users$LIST_OWN=="0 hours"),1,0)
list_own[,3] = ifelse(users$LIST_OWN=="Less than an hour",1,0)
list_own[,4] = ifelse((users$LIST_OWN=="1" | users$LIST_OWN=="1 Hour" | users$LIST_OWN=="1 hour"),1,0)
list_own[,5] = ifelse((users$LIST_OWN=="2" | users$LIST_OWN=="2 Hours" | users$LIST_OWN=="2 hours"),1,0)
list_own[,6] = ifelse((users$LIST_OWN=="3" | users$LIST_OWN=="3 Hours" | users$LIST_OWN=="3 hours"),1,0)
list_own[,7] = ifelse((users$LIST_OWN=="4" | users$LIST_OWN=="4 Hours" | users$LIST_OWN=="4 hours"),1,0)
list_own[,8] = ifelse((users$LIST_OWN=="5" | users$LIST_OWN=="5 Hours" | users$LIST_OWN=="5 hours"),1,0)
list_own[,9] = ifelse((users$LIST_OWN=="6" | users$LIST_OWN=="6 Hours" | users$LIST_OWN=="6 hours"),1,0)
list_own[,10] = ifelse((users$LIST_OWN=="7" | users$LIST_OWN=="7 Hours" | users$LIST_OWN=="7 hours"),1,0)
list_own[,11] = ifelse((users$LIST_OWN=="8" | users$LIST_OWN=="8 Hours" | users$LIST_OWN=="8 hours"),1,0)
list_own[,12] = ifelse((users$LIST_OWN=="9" | users$LIST_OWN=="9 Hours" | users$LIST_OWN=="9 hours"),1,0)
list_own[,13] = ifelse((users$LIST_OWN=="10" | users$LIST_OWN=="10 Hours" | users$LIST_OWN=="10 hours"),1,0)
list_own[,14] = ifelse((users$LIST_OWN=="11" | users$LIST_OWN=="11 Hours" | users$LIST_OWN=="11 hours"),1,0)
list_own[,15] = ifelse((users$LIST_OWN=="12" | users$LIST_OWN=="12 Hours" | users$LIST_OWN=="12 hours"),1,0)
list_own[,16] = ifelse((users$LIST_OWN=="13" | users$LIST_OWN=="13 Hours" | users$LIST_OWN=="13 hours"),1,0)
list_own[,17] = ifelse((users$LIST_OWN=="14" | users$LIST_OWN=="14 Hours" | users$LIST_OWN=="14 hours"),1,0)
list_own[,18] = ifelse((users$LIST_OWN=="15" | users$LIST_OWN=="15 Hours" | users$LIST_OWN=="15 hours"),1,0)
list_own[,19] = ifelse((users$LIST_OWN=="16" | users$LIST_OWN=="16 Hours" | users$LIST_OWN=="16 hours"),1,0)
list_own[,20] = ifelse((users$LIST_OWN=="16+" | users$LIST_OWN=="16+ Hours" | users$LIST_OWN=="16+ hours"
	| users$LIST_OWN=="17" | users$LIST_OWN=="18" | users$LIST_OWN=="19" | users$LIST_OWN=="20" 
	| users$LIST_OWN=="21" | users$LIST_OWN=="22" | users$LIST_OWN=="23" | users$LIST_OWN=="24" | users$LIST_OWN=="More than 16 hours"),1,0)

list_back = matrix(rep(-1,20*48645),ncol=20)
list_back[,1] = ifelse(users$LIST_BACK=="",1,0)
list_back[,2] = ifelse((users$LIST_BACK=="0" | users$LIST_BACK=="0 Hours" | users$LIST_BACK=="0 hours"),1,0)
list_back[,3] = ifelse(users$LIST_BACK=="Less than an hour",1,0)
list_back[,4] = ifelse((users$LIST_BACK=="1" | users$LIST_BACK=="1 Hour" | users$LIST_BACK=="1 hour"),1,0)
list_back[,5] = ifelse((users$LIST_BACK=="2" | users$LIST_BACK=="2 Hours" | users$LIST_BACK=="2 hours"),1,0)
list_back[,6] = ifelse((users$LIST_BACK=="3" | users$LIST_BACK=="3 Hours" | users$LIST_BACK=="3 hours"),1,0)
list_back[,7] = ifelse((users$LIST_BACK=="4" | users$LIST_BACK=="4 Hours" | users$LIST_BACK=="4 hours"),1,0)
list_back[,8] = ifelse((users$LIST_BACK=="5" | users$LIST_BACK=="5 Hours" | users$LIST_BACK=="5 hours"),1,0)
list_back[,9] = ifelse((users$LIST_BACK=="6" | users$LIST_BACK=="6 Hours" | users$LIST_BACK=="6 hours"),1,0)
list_back[,10] = ifelse((users$LIST_BACK=="7" | users$LIST_BACK=="7 Hours" | users$LIST_BACK=="7 hours"),1,0)
list_back[,11] = ifelse((users$LIST_BACK=="8" | users$LIST_BACK=="8 Hours" | users$LIST_BACK=="8 hours"),1,0)
list_back[,12] = ifelse((users$LIST_BACK=="9" | users$LIST_BACK=="9 Hours" | users$LIST_BACK=="9 hours"),1,0)
list_back[,13] = ifelse((users$LIST_BACK=="10" | users$LIST_BACK=="10 Hours" | users$LIST_BACK=="10 hours"),1,0)
list_back[,14] = ifelse((users$LIST_BACK=="11" | users$LIST_BACK=="11 Hours" | users$LIST_BACK=="11 hours"),1,0)
list_back[,15] = ifelse((users$LIST_BACK=="12" | users$LIST_BACK=="12 Hours" | users$LIST_BACK=="12 hours"),1,0)
list_back[,16] = ifelse((users$LIST_BACK=="13" | users$LIST_BACK=="13 Hours" | users$LIST_BACK=="13 hours"),1,0)
list_back[,17] = ifelse((users$LIST_BACK=="14" | users$LIST_BACK=="14 Hours" | users$LIST_BACK=="14 hours"),1,0)
list_back[,18] = ifelse((users$LIST_BACK=="15" | users$LIST_BACK=="15 Hours" | users$LIST_BACK=="15 hours"),1,0)
list_back[,19] = ifelse((users$LIST_BACK=="16" | users$LIST_BACK=="16 Hours" | users$LIST_BACK=="16 hours"),1,0)
list_back[,20] = ifelse((users$LIST_BACK=="16+" | users$LIST_BACK=="16+ Hours" | users$LIST_BACK=="16+ hours"
	| users$LIST_BACK=="17" | users$LIST_BACK=="18" | users$LIST_BACK=="19" | users$LIST_BACK=="20" 
	| users$LIST_BACK=="21" | users$LIST_BACK=="22" | users$LIST_BACK=="23" | users$LIST_BACK=="24" | users$LIST_BACK=="More than 16 hours"),1,0)

question = matrix(rep(-1,19*48645),ncol=19)
for(i in 1:19 ){
	question[,i] = ifelse(is.na(users[,8+i]),0.45,users[,8+i]/100)
}

newusers = cbind(users$RESPID,gender,age,work,region,music,list_own,list_back,question)
write.csv(newusers,"newusers.csv",row.names=FALSE)

