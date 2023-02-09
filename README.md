# Video Games Analysis
Git Repository for Project Group 4 

## Link to Data 

Link to dataset: https://www.kaggle.com/datasets/thedevastator/discovering-hidden-trends-in-global-video-games 

Link to data: https://sbcharitybucket.s3.us-west-2.amazonaws.com/Video_Games.csv

## List of Files 

* <a href="https://github.com/bbinvt/project-group-4/blob/main/Data/clean_videogamesalesREAL.csv">Clean dataset</a> 
* <a href="https://github.com/bbinvt/project-group-4/blob/main/Data/regreadyvgsales2.csv">Dataset with categorical variables encoded</a> 
* <a href="https://github.com/bbinvt/project-group-4/blob/main/Data/regreadyvgsales3.csv">Dataset with Genre and Rating one-hot encoded</a> 
* <a href="https://github.com/bbinvt/project-group-4/blob/main/Data/regreadyvgsales4.csv">Dataset with Genre, Rating, Publisher, Platform one-hot encoded</a> 
* <a href="https://github.com/bbinvt/project-group-4/blob/main/Data/vgsales_EU_Action.csv">Dataset for EU Action Games</a> 
* <a href="https://github.com/bbinvt/project-group-4/blob/main/Data/vgsales_JP_ROLEPLAY.csv">Dataset for JP Roleplay Games</a> 
* <a href="https://github.com/bbinvt/project-group-4/blob/main/Data/vgsales_NA_Action.csv">Dataset for NA Action Games</a> 
* <a href="https://github.com/bbinvt/project-group-4/blob/main/Data/regreadyvgsales_TOP10PUB.csv">Dataset for Top 10 Publishers</a> 
* <a href="https://github.com/bbinvt/project-group-4/blob/main/Notebooks%20-%20Preparing%20Data/videogamesales_PDA.ipynb">Preliminary Data Analysis</a> 
* <a href="https://github.com/bbinvt/project-group-4/blob/main/Notebooks%20-%20Preparing%20Data/clean_videogamesalesREAL.ipynb">Notebook for producing clean dataset</a>
* <a href="https://github.com/bbinvt/project-group-4/blob/main/Notebooks%20-%20Preparing%20Data/vgsales_regressionprep2.ipynb">Notebook for producing dataset with categorical variables encoded</a> 
* <a href="https://github.com/bbinvt/project-group-4/blob/main/Notebooks%20-%20Preparing%20Data/vgsales_regressionprepREAL.ipynb">Notebook for producing dataset with Genre and Rating one-hot encoded</a>
* <a href="https://github.com/bbinvt/project-group-4/blob/main/Notebooks%20-%20Preparing%20Data/vgsales_EU_ACTION.ipynb">Notebook for producing dataset for Action Games for EU</a>
* <a href="https://github.com/bbinvt/project-group-4/blob/main/Notebooks%20-%20Preparing%20Data/vgsales_JP_ROLEPLAY.ipynb">Notebook for producing dataset for Roleplay Games for JP</a> 
* <a href="https://github.com/bbinvt/project-group-4/blob/main/Notebooks%20-%20Preparing%20Data/vgsales_NA_ACTION.ipynb">Notebook for producing dataset for Action Games for NA</a> 
* <a href="https://github.com/bbinvt/project-group-4/blob/main/Notebooks%20-%20Preparing%20Data/vgsales_regressionprep_TOP10PUB.ipynb">Notebook for producing dataset for Top 10 Publishers
* <a href="https://github.com/bbinvt/project-group-4/tree/main/Database">Database files including ERD</a> 
* <a href="https://github.com/bbinvt/project-group-4/tree/main/Visuals">Data visualizations</a>
* <a href="https://github.com/bbinvt/project-group-4/blob/main/Modeling/model_predictions.ipynb"> Model Predictions Notebook</a>
* <a href="https://github.com/bbinvt/project-group-4/blob/main/Modeling/Model%20Analysis%20using%20R.R"> Modeling using R</a> 
* <a href="https://github.com/bbinvt/project-group-4/blob/main/Data%20Project-Group%204_final%20version.pptx">Presentation</a> 
* <a href="https://github.com/bbinvt/project-group-4/blob/main/Video%20game_Tableau_projectgroup4.twbx">Dashboard</a>


# Deliverable 1: Planning our Analysis

## Project Overview & Selected Topic
- Can we predict global revenues within the first year of a new game's release? Discover the key features for rev. predictions
- Is there a direct connection between score, rating, & sales?

## Dataset Description & Why we select this?
- Our dataset holds all the video games launched from 1980 to 2020. Columns include game features like genre, launch year, publishers, sales my market, critic and user scores etc., which will allow us to understand the gaming industry and popular games over year.
- We are selecting this data because we are interested in gaming indusrtry and would love to find out what are the factors make games stand out from more than 15k competitors by looking at their revenue and scores.

## List of Technologies Used
- Python
- SQL
- Tableau
- R
- PgAdmin

## ERD 
The dataset has been divided into three tables: Games, Sales and Ratings. 
<"https://github.com/bbinvt/project-group-4/blob/main/Database/ERD.PNG">

## Cleaning the Data Set
- Drop null values
- Drop columns: Critic Count, User Count, Developer, Rating (Alternatively try filling in null values with averages of the column)
- Normalize critic score and revenue 
- Weighted average of Revenues per year for direct comparisons between games - ie 80% of revenue comes within the first year

## Proposed ML Model:
We are designing a model to predict the revenues of videogames by geography and ultimately global. First, we are examining the statistical relationship of the data set's features to determine relevance. Then we will employ a linear regression model to predict video game revenues. We will examine different methods to improve the accuracy of our model by altering label encoding, dropping variables, and can also change how data points are grouped.

## Proposed Vizualization Analysis
- Best selling genre by market
- User/critic score by games/genres
- Sales by genre by region

# Deliverable 2: Building and Assembling the Pieces

## Important Candidate Features
Through R, we saw that the statistically important features are as follows: 
1. Years_on_Market
1. Critic_Score
3. Genre
3. User_Score
5. Publisher
5. Rating

<img src="https://github.com/bbinvt/project-group-4/blob/main/Modeling/Regression%20Model%20-%20Summary.PNG"> 

## Preliminary Visualizations 

<img src="https://github.com/bbinvt/project-group-4/blob/main/Visuals/Games%20by%20Year%20of%20Release.png">
<img src="https://github.com/bbinvt/project-group-4/blob/main/Visuals/Gaming%20Industry%20Overview.png">
<img src="https://github.com/bbinvt/project-group-4/blob/main/Visuals/Top%20Game%20Publishers.png"> 

## Presentation Structure
### Project Overview
- Dataset overview (where we started)
- Why we selected this topic

### Interesting Highlights
- Bestselling game globally and it's platform
- Top user score game globally and it's platform
- Top critic score game globally and it's platform
- Top genre by each market

### Questions Answered
- Can we predict global revenues within the first year of a new game's release? Discover the key features for rev. predictions
- Is there a direct connection between score, rating, & sales?
### Methodology
- Tools we use
- Models we use
- How we improved the model
### Results
- Prediction results
- Accuracy score
- Visuals from both Python and Tableau

## Results 
Linear regression models were used to predict global sales. The linear regression models performed quite poorly in general; the R2 value or the amount of variance that could be explained by the features varied from 6.3% to 17.1% depending on the features and type of encoding and binning used.
 
Using XG Boost to predict global sales has so far provided far better results. The best results so far have been an R2 value of 0.402 i.e. 40.2% of the variance can be explained by the features. For that model, the features that were used to predict global sales were Years_On_Market, Critic_Score, User_Score, Genre, Rating and Publisher, and Platform (with the last 4 features being one-hot encoded).

By creating models to predict sales for specific regions and genre of games, we were able to create high performing models with the highest performing model being the model used to predict North American action genre games (R squared score of 82.2%). 

