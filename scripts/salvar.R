csv
tab
excel
sav
stata
python
sas

write.table(fontes,"data/fontes.txt",sep="\t")
write.csv(fontes,file="data/fontes.csv")
write_xlsx(fontes,"data/fontes.xlsx")

fontes_lido<-read.csv("data/fontes.csv")

saveRDS(fontes,"data/fontes.rds")


