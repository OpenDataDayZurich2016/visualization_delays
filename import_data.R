setwd("data/delay_data")

library("dplyr")

# loop through all files
files <- list.files()[1:72]
data <- list()
for (i in 1:2) {  # length(files)
  delay1 <- read.csv(files[i])
  for (j in 1:1) {  # length(factor(delay1$linie))
    work.line <- 33  #factor(delay1$linie)[j]
    delay2 <- delay1 %>% 
      select(linie,umlauf_von,halt_punkt_diva_nach,halt_punkt_diva_von,soll_ab_von,ist_ab_von,soll_an_nach,ist_an_nach1,
             soll_an_von,ist_an_von,halt_punkt_id_von,halt_punkt_id_nach, halt_kurz_von1, halt_kurz_nach1) %>% 
      filter(linie == work.line) %>%
      # first calculate delays during segments of the line
      mutate(soll_seg = soll_an_nach - soll_ab_von,
             ist_seg = ist_an_nach1 - ist_ab_von,
             delay_seg = soll_seg - ist_seg,
             # below is the delay at the station
             soll_at_von = soll_ab_von - soll_an_von,
             ist_at_von = ist_ab_von - ist_an_von,
             delay_von = ist_at_von - soll_at_von,
             index = paste(as.character(linie),'-',as.character(halt_punkt_diva_von),'-',as.character(halt_punkt_diva_nach), sep = "")
      )
  }
  data[[i]] <- delay2
}

# save(data, file = "/home/vreni/Documents/ODD/visualization_delays/data/linie33_weeks1_2.rda")
