# Import the data 
data <- read.csv("C:/Users/Teresa - School/Documents/1. U of T SCS - Data Analytics Bootcamp/Module 21 - Project/regreadyvgsales2.csv")

# Create a multiple linear regression model to predict global sales
sales.model <- lm(Global_Sales ~ Platform + Year_of_Release + Genre + Publisher + Critic_Score + User_Score + Rating, data)

# View a summary of the results 
summary(sales.model)

# Create a model with only the statistically significant values 
sales.model2 <- lm(Global_Sales ~ Platform + Critic_Score + User_Score + Rating, data)

# View a summary of the results 
summary(sales.model2)