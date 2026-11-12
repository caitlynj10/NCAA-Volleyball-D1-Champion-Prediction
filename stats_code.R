options(repos = c(CRAN = "https://cloud.r-project.org/"))
install.packages(c("rlang", "httr2", "remotes"), type = "binary")
remotes::install_github("JeffreyRStevens/ncaavolleyballr", upgrade = "never")
library(ncaavolleyballr)
library(tidyverse)
library(curl)
ls("package:ncaavolleyballr")

#2021
setwd("C:/Users/caitlyn jones/OneDrive/personal/Portfolio/NCAA-Volleyball-D1-Champion-Prediction/2021-2022")


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
setwd("C:/Users/caitlyn jones/OneDrive/personal/Portfolio/NCAA-Volleyball-D1-Champion-Prediction/2022-2023")


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

#2023
setwd("C:/Users/caitlyn jones/OneDrive/personal/Portfolio/NCAA-Volleyball-D1-Champion-Prediction/2023-2024")

team_2023_url<- "https://media.githubusercontent.com/media/JeffreyRStevens/ncaavolleyballr/main/data-csv/wvb_teamseason_div1_2023.csv"
message("Downloading 2023 NCAA Division I Team Season Dataset...")
team_2023 <- read_csv(team_2023_url, show_col_types = FALSE)
print(head(team_2023))
write_csv(team_2023, "2023_Season_Stats.csv")

data("wvb_teams")
head(wvb_teams)
d1_2023_teams <- wvb_teams[wvb_teams$yr == 2023 & wvb_teams$div == 1, ]
print(d1_2023_teams[, c("team_name", "team_id", "conference")])
write_csv(d1_2023_teams, "2023_Team_Ids.csv")

match_2023_url<- "https://media.githubusercontent.com/media/JeffreyRStevens/ncaavolleyballr/main/data-csv/wvb_teammatch_div1_2023.csv"
message("Downloading 2023 NCAA Division I Team Match Season Dataset...")
match_2023 <- read_csv(match_2023_url, show_col_types = FALSE)
print(head(match_2023))
write_csv(match_2023, "2023_Season_Match_Summary.csv")

#2024
setwd("C:/Users/caitlyn jones/OneDrive/personal/Portfolio/NCAA-Volleyball-D1-Champion-Prediction/2024-2025")

team_2024_url<- "https://media.githubusercontent.com/media/JeffreyRStevens/ncaavolleyballr/main/data-csv/wvb_teamseason_div1_2024.csv"
message("Downloading 2024 NCAA Division I Team Season Dataset...")
team_2024 <- read_csv(team_2024_url, show_col_types = FALSE)
print(head(team_2024))
write_csv(team_2024, "2024_Season_Stats.csv")

data("wvb_teams")
head(wvb_teams)
d1_2024_teams <- wvb_teams[wvb_teams$yr == 2024 & wvb_teams$div == 1, ]
print(d1_2024_teams[, c("team_name", "team_id", "conference")])
write_csv(d1_2024_teams, "2024_Team_Ids.csv")

match_2024_url<- "https://media.githubusercontent.com/media/JeffreyRStevens/ncaavolleyballr/main/data-csv/wvb_teammatch_div1_2024.csv"
message("Downloading 2024 NCAA Division I Team Match Season Dataset...")
match_2024 <- read_csv(match_2024_url, show_col_types = FALSE)
print(head(match_2024))
write_csv(match_2024, "2024_Season_Match_Summary.csv")

#2025
setwd("C:/Users/caitlyn jones/OneDrive/personal/Portfolio/NCAA-Volleyball-D1-Champion-Prediction/2025-2026")

team_2025_url<- "https://media.githubusercontent.com/media/JeffreyRStevens/ncaavolleyballr/main/data-csv/wvb_teamseason_div1_2025.csv"
message("Downloading 2025 NCAA Division I Team Season Dataset...")
team_2025 <- read_csv(team_2025_url, show_col_types = FALSE)
print(head(team_2025))
write_csv(team_2025, "2025_Season_Stats.csv")

data("wvb_teams")
head(wvb_teams)
d1_2025_teams <- wvb_teams[wvb_teams$yr == 2025 & wvb_teams$div == 1, ]
print(d1_2025_teams[, c("team_name", "team_id", "conference")])
write_csv(d1_2025_teams, "2025_Team_Ids.csv")

match_2025_url<- "https://media.githubusercontent.com/media/JeffreyRStevens/ncaavolleyballr/main/data-csv/wvb_teammatch_div1_2025.csv"
message("Downloading 2025 NCAA Division I Team Match Season Dataset...")
match_2025 <- read_csv(match_2025_url, show_col_types = FALSE)
print(head(match_2025))
write_csv(match_2025, "2025_Season_Match_Summary.csv")
