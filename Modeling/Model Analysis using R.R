# Load the libraries 
library(dplyr)
library(corrplot)

# Import the data 
data <- read.csv("C:/Users/Teresa - School/Documents/GitHub/project-group-4/Data/regreadyvgsales2.csv")
data1 <- read.csv("C:/Users/Teresa - School/Documents/GitHub/project-group-4/Data/regreadyvgsales3.csv")
data2 <- read.csv("C:/Users/Teresa - School/Documents/GitHub/project-group-4/Data/regreadyvgsales4.csv")
data3 <- read.csv("C:/Users/Teresa - School/Documents/GitHub/project-group-4/Data/regreadyvgsales_TOP10PUB.csv")
europe <- read.csv("C:/Users/Teresa - School/Documents/GitHub/project-group-4/Data/vgsales_EU_Action.csv")
jp <- read.csv("C:/Users/Teresa - School/Documents/GitHub/project-group-4/Data/vgsales_JP_ROLEPLAY.csv")
north_america <- read.csv("C:/Users/Teresa - School/Documents/GitHub/project-group-4/Data/vgsales_NA_Action.csv")

# Create multiple linear regression model to predict global sales - regreadyvgsales2
sales.model <- lm(Global_Sales ~ Platform + Years_on_Market + Genre + Publisher + Critic_Score + User_Score + Rating, data)

# Results - Multiple R-squared: 0.08
summary(sales.model)

# Create multiple linear regression model to predict global sales - regreadyvgsales3
sales.model2 <- lm(Global_Sales ~ Years_on_Market + Critic_Score + User_Score + Genre_Action + Genre_Adventure + Genre_Fighting 
                   + Genre_Misc + Genre_Platform + Genre_Puzzle + Genre_Racing + Genre_Role.Playing + Genre_Shooter + 
                     Genre_Simulation + Genre_Sports + Genre_Strategy + Rating_E + Rating_M + Rating_T + Rating_Other, data1)

# Results - Multiple R-squared: 0.09
summary(sales.model2)

# Create multiple linear regression model to predict global sales - regreadyvgsales4
sales.model3 <- lm(Global_Sales ~ Years_on_Market + Critic_Score + User_Score + Genre_Action + Genre_Adventure + Genre_Fighting +
                Genre_Misc + Genre_Platform + Genre_Puzzle + Genre_Racing + Genre_Role.Playing + Genre_Shooter +
                Genre_Simulation + Genre_Sports + Genre_Strategy + Rating_E + Rating_M + Rating_Other + Rating_T +
                Publisher_3DO + Publisher_505.Games + Publisher_Acclaim.Entertainment + Publisher_Activision +
                Publisher_Atari + Publisher_Atlus + Publisher_BAM..Entertainment + Publisher_Bethesda.Softworks +
                Publisher_Capcom + Publisher_Codemasters + Publisher_Crave.Entertainment + Publisher_D3Publisher +
                Publisher_DTP.Entertainment + Publisher_Deep.Silver + Publisher_Disney.Interactive.Studios +
                Publisher_Eidos.Interactive + Publisher_Electronic.Arts + Publisher_Empire.Interactive +
                Publisher_Focus.Home.Interactive + Publisher_Global.Star + Publisher_Ignition.Entertainment +
                Publisher_Infogrames + Publisher_JoWood.Productions + Publisher_Kalypso.Media +
                Publisher_Konami.Digital.Entertainment + Publisher_LucasArts + Publisher_MTV.Games +
                Publisher_Majesco.Entertainment + Publisher_Microsoft.Game.Studios + Publisher_Midway.Games +
                Publisher_Namco.Bandai.Games + Publisher_Nintendo + Publisher_Nippon.Ichi.Software +
                Publisher_Nordic.Games + Publisher_Other + Publisher_PQube + Publisher_Paradox.Interactive +
                Publisher_Playlogic.Game.Factory + Publisher_Rising.Star.Games + Publisher_SCi + Publisher_Sega +
                Publisher_Sony.Computer.Entertainment + Publisher_Sony.Computer.Entertainment.Europe +
                Publisher_SouthPeak.Games + Publisher_Square.Enix + Publisher_TDK.Mediactive + Publisher_THQ +
                Publisher_Take.Two.Interactive + Publisher_Tecmo.Koei + Publisher_Ubisoft + Publisher_Ubisoft.Annecy +
                Publisher_Universal.Interactive + Publisher_Unknown + Publisher_Virgin.Interactive + Publisher_Vivendi.Games +
                Publisher_Warner.Bros..Interactive.Entertainment + Publisher_Zoo.Digital.Publishing +
                Platform_3DS + Platform_DS + Platform_GBA + Platform_GC + Platform_Other + Platform_PC + Platform_PS +
                Platform_PS2 + Platform_PS3 + Platform_PS4 + Platform_PSP + Platform_Wii + Platform_X360 + Platform_XB +
                Platform_XOne, data2)

# Results - 0.17 
summary(sales.model3)

# Create multiple linear regression model to predict global sales - Top 10 publishers
sales.model4 <- lm(Global_Sales ~ Years_on_Market + Critic_Score + User_Score 
                   + Platform_3DS + Platform_DS + Platform_GBA + Platform_GC + Platform_Other + Platform_PC + Platform_PS 
                   + Platform_PS2 + Platform_PS3 + Platform_PS4 + Platform_PSP + Platform_Wii + Platform_X360 + Platform_XB 
                   + Platform_XOne + Publisher_Activision + Publisher_Electronic.Arts + Publisher_Konami.Digital.Entertainment 
                   + Publisher_Namco.Bandai.Games + Publisher_Nintendo + Publisher_Sega + Publisher_Sony.Computer.Entertainment 
                   + Publisher_THQ + Publisher_Take.Two.Interactive + Publisher_Ubisoft + Genre_Action + Genre_Adventure 
                   + Genre_Fighting + Genre_Misc + Genre_Platform + Genre_Puzzle + Genre_Racing + Genre_Role.Playing 
                   + Genre_Shooter + Genre_Simulation + Genre_Sports + Genre_Strategy + Rating_E + Rating_M + 
                     Rating_Other, data3)

# Results - 0.17
summary(sales.model4)

# Create multiple linear regression model to predict EU Sales for Action Genre
europe.model <- lm(EU_Sales ~ Years_on_Market + Critic_Score + User_Score + Rating_E + Rating_M + 
                              Rating_Other + Rating_T + Publisher_3DO + Publisher_505.Games + 
                              Publisher_Acclaim.Entertainment + Publisher_Activision + Publisher_Atari + 
                              Publisher_Atlus + Publisher_BAM..Entertainment + Publisher_Bethesda.Softworks + 
                              Publisher_Capcom + Publisher_Codemasters + Publisher_Crave.Entertainment + 
                              Publisher_D3Publisher + Publisher_DTP.Entertainment + Publisher_Deep.Silver + 
                              Publisher_Disney.Interactive.Studios + Publisher_Eidos.Interactive + 
                              Publisher_Electronic.Arts + Publisher_Empire.Interactive + Publisher_Focus.Home.Interactive + 
                              Publisher_Global.Star + Publisher_Ignition.Entertainment + Publisher_Infogrames + 
                              Publisher_JoWood.Productions + Publisher_Kalypso.Media + Publisher_Konami.Digital.Entertainment + 
                              Publisher_LucasArts + Publisher_MTV.Games + Publisher_Majesco.Entertainment + 
                              Publisher_Microsoft.Game.Studios + Publisher_Midway.Games + Publisher_Namco.Bandai.Games + 
                              Publisher_Nintendo + Publisher_Nippon.Ichi.Software + Publisher_Nordic.Games + 
                              Publisher_Other + Publisher_PQube + Publisher_Paradox.Interactive + Publisher_Playlogic.Game.Factory + 
                              Publisher_Rising.Star.Games + Publisher_SCi + Publisher_Sega + 
                              Publisher_Sony.Computer.Entertainment + Publisher_Sony.Computer.Entertainment.Europe + 
                              Publisher_SouthPeak.Games + Publisher_Square.Enix + Publisher_TDK.Mediactive + 
                              Publisher_THQ + Publisher_Take.Two.Interactive + Publisher_Tecmo.Koei + Publisher_Ubisoft + 
                              Publisher_Ubisoft.Annecy + Publisher_Universal.Interactive + Publisher_Unknown + 
                              Publisher_Virgin.Interactive + Publisher_Vivendi.Games + 
                              Publisher_Warner.Bros..Interactive.Entertainment + Publisher_Zoo.Digital.Publishing + 
                              Platform_3DS + Platform_DS + Platform_GBA + Platform_GC + Platform_Other + 
                              Platform_PC + Platform_PS + Platform_PS2 + Platform_PS3 + Platform_PS4 + 
                              Platform_PSP + Platform_Wii + Platform_X360 + Platform_XB + Platform_XOne, data = europe)

# Results - 0.32
summary(europe.model)

# Create multiple linear regression model to predict JP sales for Roleplay genre
jp.model <- lm(JP_Sales ~ Years_on_Market + Critic_Score + User_Score + Rating_E + Rating_M + Rating_Other + Rating_T + 
                 Publisher_3DO + Publisher_505.Games + Publisher_Acclaim.Entertainment + Publisher_Activision + 
                 Publisher_Atari + Publisher_Atlus + Publisher_BAM..Entertainment + Publisher_Bethesda.Softworks + 
                 Publisher_Capcom + Publisher_Codemasters + Publisher_Crave.Entertainment + Publisher_D3Publisher + 
                 Publisher_DTP.Entertainment + Publisher_Deep.Silver + Publisher_Disney.Interactive.Studios + 
                 Publisher_Eidos.Interactive + Publisher_Electronic.Arts + Publisher_Empire.Interactive + 
                 Publisher_Focus.Home.Interactive + Publisher_Global.Star + Publisher_Ignition.Entertainment + 
                 Publisher_Infogrames + Publisher_JoWood.Productions + Publisher_Kalypso.Media + 
                 Publisher_Konami.Digital.Entertainment + Publisher_LucasArts + Publisher_MTV.Games + 
                 Publisher_Majesco.Entertainment + Publisher_Microsoft.Game.Studios + Publisher_Midway.Games + 
                 Publisher_Namco.Bandai.Games + Publisher_Nintendo + Publisher_Nippon.Ichi.Software + 
                 Publisher_Nordic.Games + Publisher_Other + Publisher_PQube + Publisher_Paradox.Interactive + 
                 Publisher_Playlogic.Game.Factory + Publisher_Rising.Star.Games + Publisher_SCi + Publisher_Sega + 
                 Publisher_Sony.Computer.Entertainment + Publisher_Sony.Computer.Entertainment.Europe + 
                 Publisher_SouthPeak.Games + Publisher_Square.Enix + Publisher_TDK.Mediactive + Publisher_THQ + 
                 Publisher_Take.Two.Interactive + Publisher_Tecmo.Koei + Publisher_Ubisoft + Publisher_Ubisoft.Annecy + 
                 Publisher_Universal.Interactive + Publisher_Unknown + Publisher_Virgin.Interactive + 
                 Publisher_Vivendi.Games + Publisher_Warner.Bros..Interactive.Entertainment + 
                 Publisher_Zoo.Digital.Publishing + Platform_3DS + Platform_DS + Platform_GBA + 
                 Platform_GC + Platform_Other + Platform_PC + Platform_PS + Platform_PS2 + Platform_PS3 + 
                 Platform_PS4 + Platform_PSP + Platform_Wii + Platform_X360 + Platform_XB + Platform_XOne, data = jp)

# Results - 0.28 
summary(jp.model)

# Create multiple linear regression model to predict North America sales for Action genre
na_model <- lm(NA_Sales ~ Years_on_Market + Critic_Score + User_Score + Rating_E + Rating_M +
                 Rating_Other + Rating_T + Publisher_3DO + Publisher_505.Games + Publisher_Acclaim.Entertainment +
                 Publisher_Activision + Publisher_Atari + Publisher_Atlus + Publisher_BAM..Entertainment +
                 Publisher_Bethesda.Softworks + Publisher_Capcom + Publisher_Codemasters + Publisher_Crave.Entertainment +
                 Publisher_D3Publisher + Publisher_DTP.Entertainment + Publisher_Deep.Silver + Publisher_Disney.Interactive.Studios +
                 Publisher_Eidos.Interactive + Publisher_Electronic.Arts + Publisher_Empire.Interactive + Publisher_Focus.Home.Interactive +
                 Publisher_Global.Star + Publisher_Ignition.Entertainment + Publisher_Infogrames + Publisher_JoWood.Productions +
                 Publisher_Kalypso.Media + Publisher_Konami.Digital.Entertainment + Publisher_LucasArts + Publisher_MTV.Games +
                 Publisher_Majesco.Entertainment + Publisher_Microsoft.Game.Studios + Publisher_Midway.Games + Publisher_Namco.Bandai.Games +
                 Publisher_Nintendo + Publisher_Nippon.Ichi.Software + Publisher_Nordic.Games + Publisher_Other + Publisher_PQube +
                 Publisher_Paradox.Interactive + Publisher_Playlogic.Game.Factory + Publisher_Rising.Star.Games + Publisher_SCi +
                 Publisher_Sega + Publisher_Sony.Computer.Entertainment + Publisher_Sony.Computer.Entertainment.Europe + Publisher_SouthPeak.Games +
                 Publisher_Square.Enix + Publisher_TDK.Mediactive + Publisher_THQ + Publisher_Take.Two.Interactive + Publisher_Tecmo.Koei +
                 Publisher_Ubisoft + Publisher_Ubisoft.Annecy + Publisher_Universal.Interactive + Publisher_Unknown + Publisher_Virgin.Interactive +
                 Publisher_Vivendi.Games + Publisher_Warner.Bros..Interactive.Entertainment + Publisher_Zoo.Digital.Publishing + Platform_3DS +
                 Platform_DS + Platform_GBA + Platform_GC + Platform_Other + Platform_PC + Platform_PS + Platform_PS2 + Platform_PS3 + Platform_PS4 +
                 Platform_PSP + Platform_Wii + Platform_X360 + Platform_XB + Platform_XOne, data = north_america)

# Results - 0.31
summary(na_model)

# Create correlation matrix
library(corrplot)
cor_matrix <- cor(data)
corrplot(cor_matrix, method = "color")

