# Elham Kakaei
# Degree Course : Scinces and Management of Nature
install.packages("ncdf4")
install.packages("raster")
library(ncdf4)
library(raster)
library(rgdal)# for making prediction 
# setwd("C:/lab/project")
# windows
setwd("C:/lab/project")
#To put files in raster 
swia2007 <- raster("c_gls_SWI10_200704111200_GLOBE_ASCAT_V3.1.1.nc")
swia2008 <- raster("c_gls_SWI10_200804111200_GLOBE_ASCAT_V3.1.1.nc")
swia2009 <- raster("c_gls_SWI10_200904111200_GLOBE_ASCAT_V3.1.1.nc")
swia2010 <- raster("c_gls_SWI10_201004111200_GLOBE_ASCAT_V3.1.1.nc")
swia2011 <- raster("c_gls_SWI10_201104111200_GLOBE_ASCAT_V3.1.1.nc")
swia2012 <- raster("c_gls_SWI10_201204111200_GLOBE_ASCAT_V3.1.1.nc")
swia2013 <- raster("c_gls_SWI10_201304111200_GLOBE_ASCAT_V3.1.1.nc")
swia2014 <- raster("c_gls_SWI10_201404111200_GLOBE_ASCAT_V3.1.1.nc")
swia2015 <- raster("c_gls_SWI10_201504111200_GLOBE_ASCAT_V3.1.1.nc")
swia2016 <- raster("c_gls_SWI10_201604111200_GLOBE_ASCAT_V3.1.1.nc")
swia2017 <- raster("c_gls_SWI10_201704111200_GLOBE_ASCAT_V3.1.1.nc")
swia2018 <- raster("c_gls_SWI10_201804111200_GLOBE_ASCAT_V3.1.1.nc")
swia2019 <- raster("c_gls_SWI10_201904011200_GLOBE_ASCAT_V3.1.1.nc")
swia2020 <- raster("c_gls_SWI10_202004111200_GLOBE_ASCAT_V3.1.1.nc")

#to make list by list.files function to sure that they have been listed in the order
swialist <- list.files(pattern="c_gls_SWI10")
swialist 
# to get plot of images 
#In order to put the title above the plots Make use of the function: main=
#To get information of image and its layers use function of brick 
swia2007 < - brick ( "c_gls_SWI10_200704111200_GLOBE_ASCAT_V3.1.1.nc " )
swia2007
plot (swia2007, main= " 2007 " )
swia2008 < - brick ( "c_gls_SWI10_200804111200_GLOBE_ASCAT_V3.1.1.nc" )
swia2008
plot (swia2008, main= " 2008 " )
swia2009 < - brick ( "c_gls_SWI10_200904111200_GLOBE_ASCAT_V3.1.1.nc" )
swia2009 
plot (swia2009, main= " 2009 " )
swia2010 < - brick ( "c_gls_SWI10_201004111200_GLOBE_ASCAT_V3.1.1.nc" )
swia2010 
plot (swia2010, main= " 2010 " )
swia2011 < - brick ( "c_gls_SWI10_201104111200_GLOBE_ASCAT_V3.1.1.nc" )
swia2011
plot (swia2011, main= " 2011 " )
swia2012 < - brick ( "c_gls_SWI10_201204111200_GLOBE_ASCAT_V3.1.1.nc" )
swia2012
plot (swia2012, main= " 2012 " )
swia2013 < - brick ( "c_gls_SWI10_201304111200_GLOBE_ASCAT_V3.1.1.nc" )
swia2013
plot (swia2013, main= " 2013 " )
swia2014 < - brick ( "c_gls_SWI10_201404111200_GLOBE_ASCAT_V3.1.1.nc" )
swia2014
plot (swia2014, main= " 2014 " )
swia2015 < - brick ( "c_gls_SWI10_201504111200_GLOBE_ASCAT_V3.1.1.nc" )
swia2015
plot (swia2015, main= " 2015 " )
swia2016 < - brick ( "c_gls_SWI10_201604111200_GLOBE_ASCAT_V3.1.1.nc" )
swia2016
plot (swia2016, main= " 2016 " )
swia2017 < - brick ( "c_gls_SWI10_201704111200_GLOBE_ASCAT_V3.1.1.nc" )
swia2017
plot (swia2017, main= " 2017 " )
swia2018 < - brick ( "c_gls_SWI10_201804111200_GLOBE_ASCAT_V3.1.1.nc" )
swia2018
plot (swia2018, main= " 2018 " )
swia2019 < - brick ( "c_gls_SWI10_201904011200_GLOBE_ASCAT_V3.1.1.nc" )
swia2019
plot (swia2019, main= " 2019 " )
swia2020 < - brick ( "c_gls_SWI10_202004111200_GLOBE_ASCAT_V3.1.1.nc" )
swia2020
plot (swia2020, main= " 2020 " )

# changing color of plot by colorRampPalette
cl <- colorRampPalette(c('red','orange','yellow'))(100)
#using par function for having plots in one page 
#To make par  making 2 groups because 14 imagesin one page got too small
par(mfrow=c(3,3))
plot(swia2007 , col=cl , main=2007 )
plot(swia2008 , col=cl , main=2008 )
plot(swia2009 , col=cl , main=2009 )
plot(swia2010 , col=cl , main=2010 )
plot(swia2011 , col=cl , main=2011 )
plot(swia2012 , col=cl , main=2012 )
plot(swia2013 , col=cl , main=2013 )
par(mfrow=c(3,3))
plot(swia2014 , col=cl , main=2014 )
plot(swia2015 , col=cl , main=2015 )
plot(swia2016 , col=cl , main=2016 )
plot(swia2017 , col=cl , main=2017 )
plot(swia2018 , col=cl , main=2018 )
plot(swia2019 , col=cl , main=2019 )
plot(swia2020 , col=cl , main=2020 )


#To find different part from 2007 to 2020
# put cldif <- colorRampPalette(c('blue','yellow','red'))(100)  as a color of plots 
cldif <- colorRampPalette(c('blue','yellow','red'))(100)  
# putting different names to plot that obtain by getting different  
difa <- swia2007 - swia2011 
plot(difa, col=cldif , main= "2007 - 2011" )
difb <- swia2011 - swia2015 
plot(difb, col=cldif , main= "2011 - 2015" )
difc <- swia2015 - swia2020 
plot(difc, col=cldif , main= "2015 - 2020" )
#to make crop from the location there is different 
#to make crop for north Europ and ASia
ext <- c(-50,100 ,40,100)  # xmin xmax ymin ymax
difa_north <- crop(difa, ext)
plot(difa_north, col=cldif , main= "north 2007 - 2011")
 
difb_north <- crop(difb, ext)
plot(difb_north, col=cldif , main= "north 2011 - 2015")

difc_north <- crop(difc, ext)
plot(difc_north, col=cldif , main= "north 2015 - 2020")
#to make crop from America
exta <- c(-150,-50,0,80)  
difa_america <- crop(difa, exta)
plot(difa_america, col=cldif , main= "america 2007 - 2011")

difb_america <- crop(difb, exta)
plot(difb_america, col=cldif , main= "america 2011 - 2015")
 
difc_america <- crop(difc, exta)
plot(difc_america, col=cldif , main= "america 2015 - 2020")

#I dicided to make prediction from my images SO Based on my research, I realized that the distance between the images is important, and as a result, I created a new folder in Lab and left four of the images four years apart.
#I try to make a prediction in raster using linear regression based on past rasters 
# calculate regression in a raster stack (time series)
# and predict.
# setwd("C:/lab/project/predict")
setwd("C:/lab/project/predict")
#to put images in raster
swia2007 <- raster("c_gls_SW_200704111200_GLOBE_ASCAT_V3.1.1.nc")
swia2011 <- raster("c_gls_SW_201104111200_GLOBE_ASCAT_V3.1.1.nc")
swia2015 <- raster("c_gls_SW_201504111200_GLOBE_ASCAT_V3.1.1.nc")
swia2019 <- raster("c_gls_SW_201904011200_GLOBE_ASCAT_V3.1.1.nc")

# for predicting firstly to make list 
swiaplist <- list.files(pattern="c_gls_SW")
swiaplist 
# Now to make stack 
# SWIA <- stack(list.files )
SWIAP <- stack(swiaplist )
plot(SWIAP, col=cl) 
# now need extent by brick function I saw the extent was (-180, 180, -90, 90)
#SWIAP see extention
SWIAP
# crop the stack to the extent 
ext<-c(-180, 180, -90, 90)
extension<-crop(SWIAP,ext)
#Create the time variable to be used in regression
time<-1:nlayers(SWIAP)
time
# the regression
# y=ax+b
lm_intercept <- calc(extension, fun = function(x) {if (all(is.na(x))) return(NA)  else return(coef(lm(x ~ time))[1])})
 
lm_slope <- calc(extension, fun = function(x) {if (all(is.na(x))) return(NA) else return(coef(lm(x ~ time))[2])})
  
predicted = lm_slope * (extension[[4]]) + lm_intercept
predicted[predicted==0] <- NA
plot(predicted)
















