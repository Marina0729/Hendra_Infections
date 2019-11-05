.libPaths(c("C:/Users/ale097/Data School/Packages"))
library(tidyverse)
read_csv("data/Hendra_Infection_001.csv")                                   #Read in the data 
TCID50 <- read_csv("data/Hendra_Infection_001.csv")
TCID50

TCID50 %>% 
  filter(Lysis == "RIPA buffer") %>% 
  select(siRNA, time, Rep, TCID50) %>% 
  ggplot(mapping = aes(x = time, y = TCID50, shape = Rep, linetype = siRNA)) +
  geom_line(size =) +
  geom_point(size = 5) +
  theme_bw()


