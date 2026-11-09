options(repos = c(CRAN = "https://cloud.r-project.org/"))
install.packages(c("rlang", "httr2", "remotes"), type = "binary")
remotes::install_github("JeffreyRStevens/ncaavolleyballr", upgrade = "never")
library(ncaavolleyballr)
library(tidyverse)
ls("package:ncaavolleyballr")

#2021
team_2021_url<- "https://media.githubusercontent.com/media/JeffreyRStevens/ncaavolleyballr/main/data-csv/wvb_teamseason_div1_2021.csv"
message("Downloading 2021 NCAA Division I Team Season Dataset...")
team_2021 <- read_csv(team_2021_url, show_col_types = FALSE)
print(head(team_2021))
write_csv(team_2021, "2021_Season_Stats.csv")

data("wvb_teams")
head(wvb_teams)
d1_2021_teams <- wvb_teams[wvb_teams$yr == 2021 & wvb_teams$div == 1, ]
print(d1_2021_teams[, c("team_name", "team_id", "conference")])
write_csv(d1_2021_teams, "2021_Team_Ids.csv")

match_2021_url<- "https://media.githubusercontent.com/media/JeffreyRStevens/ncaavolleyballr/main/data-csv/wvb_teammatch_div1_2021.csv"
message("Downloading 2021 NCAA Division I Team Match Season Dataset...")
match_2021 <- read_csv(match_2021_url, show_col_types = FALSE)
print(head(match_2021))
write_csv(match_2021, "2021_Season_Match_Summary.csv")

#2022
team_2022_url<- "https://media.githubusercontent.com/media/JeffreyRStevens/ncaavolleyballr/main/data-csv/wvb_teamseason_div1_2022.csv"
message("Downloading 2022 NCAA Division I Team Season Dataset...")
team_2022 <- read_csv(team_2022_url, show_col_types = FALSE)
print(head(team_2022))
write_csv(team_2022, "2022_Season_Stats.csv")

data("wvb_teams")
head(wvb_teams)
d1_2022_teams <- wvb_teams[wvb_teams$yr == 2022 & wvb_teams$div == 1, ]
print(d1_2022_teams[, c("team_name", "team_id", "conference")])
write_csv(d1_2022_teams, "2022_Team_Ids.csv")

match_2022_url<- "https://media.githubusercontent.com/media/JeffreyRStevens/ncaavolleyballr/main/data-csv/wvb_teammatch_div1_2022.csv"
message("Downloading 2022 NCAA Division I Team Match Season Dataset...")
match_2022 <- read_csv(match_2022_url, show_col_types = FALSE)
print(head(match_2022))
write_csv(match_2022, "2022_Season_Match_Summary.csv")
