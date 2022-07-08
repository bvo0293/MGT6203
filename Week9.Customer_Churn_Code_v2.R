#####################
####  EXAMPLE 1  ####
#####################

##GET DATA 
file <- "Telco_v3.csv"
data <- read.csv(file)
str(data)


##CREATE CHURN MODEL 
model = glm(Churn ~ SeniorCitizen + tenure + Partner, data, family = "binomial")
summary(model)


####################
#### EXAMPLE 2a ####
####################

##CREATE DATA
SeniorCitizen = c("Yes", "No")
tenure = c(23, 5)
Partner = c("Yes", "No")
data <- data.frame(tenure = tenure, Partner = Partner, SeniorCitizen = SeniorCitizen)
(data)

##PREDICT PROBABILITY
predict(model, data, type="response") 



####################
#### EXAMPLE 2b ####
####################

##DEFINE BETA COEFFICIENTS
B <- c(0.9527, -1.0494, -0.0396, -0.1159)

##DEFINE CUSTOMER DATA
X_John <- c(1, 1, 23, 1)
X_Sara <-c(1, 0, 5, 0)

##COMPUTE CHURN RATE FOR JOHN
exp(B%*%X_John)/(1 + exp(B%*%X_John))

##COMPUTE CHURN RATE FOR SARA
exp(B%*%X_Sara)/(1 + exp(B%*%X_Sara))

