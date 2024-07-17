# Fitting the café-wise regression model
# Giwon Bahg
# 07/16/2024

# For the CATLAB Bayesian inference workshop
# 

m1.base.statement = "
data {
  int N_visits;
  vector[N_visits] afternoon;
  vector[N_visits] wait_time;
}

parameters {
  vector[2] beta;
  real sigma;
}

model {
  for (j in 1:N_visits){
    wait_time[j] ~ normal(beta[1] + beta[2] * afternoon[j], sigma);
  }
}
"

# Model fitting
model1.base = stan_model(model_code = m1.base.statement)
fit1.base.list = list()
post1.base.list = list()
beta.ols.bayes = array(NA, c(N_cafes, 2, 2))
for (i in 1:20){
  fit1.base.list[[i]] = sampling(model1.base, 
                                 data = list(N_visits = N_visits, 
                                             afternoon = matrix(d$afternoon, 10, 20)[,i], 
                                             wait_time = matrix(d$wait, 10, 20)[,i]), 
                                 iter = 10000,
                                 chains = 4, cores = 4)
  post1.base.list[[i]] = extract(fit1.base.list[[i]])
  beta.ols.bayes[i,, 1] = colMeans(post1.base.list[[i]]$beta) # Store the mean estimate
  beta.ols.bayes[i,, 2] = apply(post1.base.list[[i]]$beta, 2, sd) # Store the SD of the posterior estimate
}

#save(model1.base, fit1.base.list, post1.base.list, beta.ols.bayes, file = "cafe_independent.Rdata")
