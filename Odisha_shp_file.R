setwd("E:/R_dibya/SHAPE_FILE/ODISHA_DST")
library(rgdal)
shp=readOGR(dsn=".",layer="district_Output")
plot(shp)
# for interactive maps
plot(shp,col="green", bg="lightblue",lwd=2)
library(ggplot2)
df=fortify(shp)
ggplot()+
  geom_polygon(data=df,aes(x=long,y=lat,group=group),
               fill="green",color="black",lwd=1)+
  
  theme_bw()
