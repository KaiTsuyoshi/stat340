
library(MASS);

Sigma <- matrix( c( 2, 0, 0, 1), nrow = 2); # Diagonal covariance matrix

demo_data_1 <- mvrnorm( n=200, mu=c(0,0), Sigma=Sigma);
demo_df_1 <- data.frame( 'X1'=demo_data_1[,1], 'X2'=demo_data_1[,2] );

years_of_edu <- c(10,10.5,11,11.1,11.8,12, 12.2,12.8,13.1,13.8,14,14.4,15,15.5,15.8,16,16.2,16.8,17.1,17.5,17.9,18,18.2,18.5,19,19.3,19.5,19.8,19.9,20,20.2,20.7,20.9,21.1,21.5,21.7,22.1);
income <- 5000*(years_of_edu + rnorm(length(years_of_edu)) );
income_v_edu <- data.frame( 'income'=income, 'edu'=years_of_edu )

