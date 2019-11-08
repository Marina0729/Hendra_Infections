.libPaths(c("C:/Users/ale097/Data School/Packages"))
library(tidyverse)
read_csv("data/Hendra_Infection_001.csv")                                   #Read in the data 
TCID50 <- read_csv("data/Hendra_Infection_001.csv")
TCID50

plot1 <- TCID50 %>% 
  filter(Lysis == "RIPA buffer") %>% 
  select(siRNA, time, Rep, TCID50) %>% 
  ggplot(mapping = aes(x = time, y = TCID50, shape = Rep, linetype = siRNA)) +
  geom_line(size = 1) +
  geom_point(size = 3) +
  theme_classic() +
  theme(legend.text = element_text(size = 12), 
        legend.title = element_text(size = 15),
        axis.title = element_text(size = 15), 
        axis.text.x = element_text(size = 12),
        axis.title.y = element_text(size = 15),
        axis.text.y = element_text(size = 12 ), 
        legend.key.height = unit("0.5", "cm")) +
  labs(title = "Hendra Infection 001 6 well format", x = "Time post infection (hrs)")
  


ggsave(filename = "results/TCID50_001_6well.png", plot = plot1)

