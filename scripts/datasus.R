# Código para baixar os dados do datasus para minha tese

set.seed(467)

library(datasus) ## Carrega pacote datatus
library(here) ## Carrega o pacote here para manter o caminho do projeto root
library(writexl) ## 
library(tidyverse)
library(janitor)
library(magrittr)

## importa dados do sistema de informação sobre mortalidade
df<-sim_obt10_mun(linha = "Microrregião IBGE",
              coluna = "Capítulo CID-10")

write_xlsx(x=df,"data/sim.xlsx")


nomes<-names(df)



df1<- df %>% 
  clean_names() %>% 
  tail(-1) %>% 
  separate(col=microrregiao_ibge,
           into=c("codigo_municipio","nome_municipio"),
           sep=" ",
           extra="merge")
  
  
base<-tibble(data1=datas,data2=datas2)



base %<>% 
  mutate_if(is.character,dmy) %>% 
  mutate(diferenca=data1-data2)
  
