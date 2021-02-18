Elham Kakaei

library(ncdf4)
library(raster)
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

to get plot of images 
swia2007 <- raster("c_gls_SWI10_200704111200_GLOBE_ASCAT_V3.1.1.nc")
plot(swia2007 )
swia2008 <- raster("c_gls_SWI10_200804111200_GLOBE_ASCAT_V3.1.1.nc")
plot(swia2008)
swia2009 <- raster("c_gls_SWI10_200904111200_GLOBE_ASCAT_V3.1.1.nc")
plot(swia2009)
swia2010 <- raster("c_gls_SWI10_201004111200_GLOBE_ASCAT_V3.1.1.nc")
plot(swia2010)
swia2011 <- raster("c_gls_SWI10_201104111200_GLOBE_ASCAT_V3.1.1.nc")
plot(swia2011)
swia2012 <- raster("c_gls_SWI10_201204111200_GLOBE_ASCAT_V3.1.1.nc")
plot(swia2012)
swia2013 <- raster("c_gls_SWI10_201304111200_GLOBE_ASCAT_V3.1.1.nc")
plot(swia2013)
swia2014 <- raster("c_gls_SWI10_201404111200_GLOBE_ASCAT_V3.1.1.nc")
plot(swia2014)
swia2015 <- raster("c_gls_SWI10_201504111200_GLOBE_ASCAT_V3.1.1.nc")
plot(swia2015)
swia2016 <- raster("c_gls_SWI10_201604111200_GLOBE_ASCAT_V3.1.1.nc")
plot(swia2016)
swia2017 <- raster("c_gls_SWI10_201704111200_GLOBE_ASCAT_V3.1.1.nc")
plot(swia2017)
swia2018 <- raster("c_gls_SWI10_201804111200_GLOBE_ASCAT_V3.1.1.nc")
plot(swia2018)
swia2019 <- raster("c_gls_SWI10_201904011200_GLOBE_ASCAT_V3.1.1.nc")
plot(swia2019)
swia2020 <- raster("c_gls_SWI10_202004111200_GLOBE_ASCAT_V3.1.1.nc")
plot(swia2020)
cl <- colorRampPalette(c('red','orange','yellow'))(100)
par(mfrow=c(4,4))
plot(swia2007 , col=cl , main=2007 )
plot(swia2008 , col=cl , main=2008 )
plot(swia2009 , col=cl , main=2009 )
plot(swia2010 , col=cl , main=2010 )
plot(swia2011 , col=cl , main=2011 )
plot(swia2012 , col=cl , main=2012 )
plot(swia2013 , col=cl , main=2013 )
plot(swia2014 , col=cl , main=2014 )
plot(swia2015 , col=cl , main=2015 )
plot(swia2016 , col=cl , main=2016 )
plot(swia2017 , col=cl , main=2017 )
plot(swia2018 , col=cl , main=2018 )
plot(swia2019 , col=cl , main=2019 )
plot(swia2020 , col=cl , main=2020 )


For making list files in R
swialist <- list.files(pattern="c_gls_SWI10")
swialist 
list_rast <- lapply(swialist, raster)
to make stack from all images 
SWIA <- stack(swia2007  , swia2008 , swia2009 , swia2010 ,swia2011 , swia2012 , swia2013 ,swia2014 , swia2015 ,swia2016 , swia2017 , swia2018 , swia2019 , swia2020 )
plot(SWIA, col=cl)
change color
cl <- colorRampPalette(c('red','blue','yellow'))(100)
SWIA <- stack(swia2007  , swia2008 , swia2009 , swia2010 ,swia2011 , swia2012 , swia2013 ,swia2014 , swia2015 ,swia2016 , swia2017 , swia2018 , swia2019 , swia2020 )
plot(SWIA, col=cl)

To make plot RGB
plotRGB(SWIA , red=swia2007 , green=swia2014 , blue=swia2020 , stretch="lin")
For getting Boxplot
dev.off()
boxplot(SWIA ,horizontal=T,axes=T,outline=F, col="red",xlab="soil water ", ylab="Period")

To get information of image and its layers use function of brick 
library(raster)
library(RStoolbox)
library(ncdf4)
setwd("C:/lab/project")
swia2007 < - brick ( "c_gls_SWI10_200704111200_GLOBE_ASCAT_V3.1.1.nc " )
swia2007
class      : RasterLayer 
dimensions : 1800, 3600, 6480000  (nrow, ncol, ncell)
resolution : 0.1, 0.1  (x, y)
extent     : -180, 180, -90, 90  (xmin, xmax, ymin, ymax)
crs        : +proj=longlat +ellps=WGS84 +no_defs 
source     : memory
names      : layer 
values     : 0, 0  (min, max)
to make plot
plot (swia2007, main= " 2007 " )
swia2008 < - brick ( "c_gls_SWI10_200804111200_GLOBE_ASCAT_V3.1.1.nc" )
swia2008
class      : RasterLayer 
dimensions : 1800, 3600, 6480000  (nrow, ncol, ncell)
resolution : 0.1, 0.1  (x, y)
extent     : -180, 180, -90, 90  (xmin, xmax, ymin, ymax)
crs        : +proj=longlat +ellps=WGS84 +no_defs 
source     : C:/lab/project/c_gls_SWI10_200804111200_GLOBE_ASCAT_V3.1.1.nc 
names      : Percent.Valid.Observations.with.T.15 
z-value    : 2008-04-11 
zvar       : VOBS_015 
to make plot
plot (swia2008, main= " 2008 " )
swia2009 < - brick ( "c_gls_SWI10_200904111200_GLOBE_ASCAT_V3.1.1.nc" )
swia2009 
plot (swia2009, main= " 2009 " )

class      : RasterLayer 
dimensions : 1800, 3600, 6480000  (nrow, ncol, ncell)
resolution : 0.1, 0.1  (x, y)
extent     : -180, 180, -90, 90  (xmin, xmax, ymin, ymax)
crs        : +proj=longlat +ellps=WGS84 +no_defs 
source     : C:/lab/project/c_gls_SWI10_200904111200_GLOBE_ASCAT_V3.1.1.nc 
names      : Percent.Valid.Observations.with.T.15 
z-value    : 2009-04-11 
zvar       : VOBS_015 
swia2010 < - brick ( "c_gls_SWI10_201004111200_GLOBE_ASCAT_V3.1.1.nc" )
swia2010 
plot (swia2010, main= " 2010 " )

swia2010 
class      : RasterLayer 
dimensions : 1800, 3600, 6480000  (nrow, ncol, ncell)
resolution : 0.1, 0.1  (x, y)
extent     : -180, 180, -90, 90  (xmin, xmax, ymin, ymax)
crs        : +proj=longlat +ellps=WGS84 +no_defs 
source     : C:/lab/project/c_gls_SWI10_201004111200_GLOBE_ASCAT_V3.1.1.nc 
names      : Percent.Valid.Observations.with.T.15 
z-value    : 2010-04-11 
zvar       : VOBS_015 
swia2011 < - brick ( "c_gls_SWI10_201104111200_GLOBE_ASCAT_V3.1.1.nc" )
swia2011
plot (swia2011, main= " 2011 " )

swia2011
class      : RasterLayer 
dimensions : 1800, 3600, 6480000  (nrow, ncol, ncell)
resolution : 0.1, 0.1  (x, y)
extent     : -180, 180, -90, 90  (xmin, xmax, ymin, ymax)
crs        : +proj=longlat +ellps=WGS84 +no_defs 
source     : C:/lab/project/c_gls_SWI10_201104111200_GLOBE_ASCAT_V3.1.1.nc 
names      : Percent.Valid.Observations.with.T.15 
z-value    : 2011-04-11 
zvar       : VOBS_015 


swia2012 < - brick ( "c_gls_SWI10_201204111200_GLOBE_ASCAT_V3.1.1.nc" )
swia2012
plot (swia2012, main= " 2012 " )
swia2012
class      : RasterLayer 
dimensions : 1800, 3600, 6480000  (nrow, ncol, ncell)
resolution : 0.1, 0.1  (x, y)
extent     : -180, 180, -90, 90  (xmin, xmax, ymin, ymax)
crs        : +proj=longlat +ellps=WGS84 +no_defs 
source     : C:/lab/project/c_gls_SWI10_201204111200_GLOBE_ASCAT_V3.1.1.nc 
names      : Percent.Valid.Observations.with.T.15 
z-value    : 2012-04-11 
zvar       : VOBS_015 
swia2013 < - brick ( "c_gls_SWI10_201304111200_GLOBE_ASCAT_V3.1.1.nc" )
swia2013
plot (swia2013, main= " 2013 " )
swia2013
class      : RasterLayer 
dimensions : 1800, 3600, 6480000  (nrow, ncol, ncell)
resolution : 0.1, 0.1  (x, y)
extent     : -180, 180, -90, 90  (xmin, xmax, ymin, ymax)
crs        : +proj=longlat +ellps=WGS84 +no_defs 
source     : C:/lab/project/c_gls_SWI10_201304111200_GLOBE_ASCAT_V3.1.1.nc 
names      : Percent.Valid.Observations.with.T.15 
z-value    : 2013-04-11 
zvar       : VOBS_015 
swia2014 < - brick ( "c_gls_SWI10_201404111200_GLOBE_ASCAT_V3.1.1.nc" )
swia2014
plot (swia2014, main= " 2014 " )
class      : RasterLayer 
dimensions : 1800, 3600, 6480000  (nrow, ncol, ncell)
resolution : 0.1, 0.1  (x, y)
extent     : -180, 180, -90, 90  (xmin, xmax, ymin, ymax)
crs        : +proj=longlat +ellps=WGS84 +no_defs 
source     : C:/lab/project/c_gls_SWI10_201404111200_GLOBE_ASCAT_V3.1.1.nc 
names      : Percent.Valid.Observations.with.T.15 
z-value    : 2014-04-11 
zvar       : VOBS_015
swia2015 < - brick ( "c_gls_SWI10_201504111200_GLOBE_ASCAT_V3.1.1.nc" )
swia2015
plot (swia2015, main= " 2015 " )
class      : RasterLayer 
dimensions : 1800, 3600, 6480000  (nrow, ncol, ncell)
resolution : 0.1, 0.1  (x, y)
extent     : -180, 180, -90, 90  (xmin, xmax, ymin, ymax)
crs        : +proj=longlat +ellps=WGS84 +no_defs 
source     : C:/lab/project/c_gls_SWI10_201504111200_GLOBE_ASCAT_V3.1.1.nc 
names      : Percent.Valid.Observations.with.T.15 
z-value    : 2015-04-11 
zvar       : VOBS_015 
swia2016 < - brick ( "c_gls_SWI10_201604111200_GLOBE_ASCAT_V3.1.1.nc" )
swia2016
plot (swia2016, main= " 2016 " )
class      : RasterLayer 
dimensions : 1800, 3600, 6480000  (nrow, ncol, ncell)
resolution : 0.1, 0.1  (x, y)
extent     : -180, 180, -90, 90  (xmin, xmax, ymin, ymax)
crs        : +proj=longlat +ellps=WGS84 +no_defs 
source     : C:/lab/project/c_gls_SWI10_201604111200_GLOBE_ASCAT_V3.1.1.nc 
names      : Percent.Valid.Observations.with.T.15 
z-value    : 2016-04-11 
zvar       : VOBS_015 
swia2017 < - brick ( "c_gls_SWI10_201704111200_GLOBE_ASCAT_V3.1.1.nc" )
swia2017
plot (swia2017, main= " 2017 " )
class      : RasterLayer 
dimensions : 1800, 3600, 6480000  (nrow, ncol, ncell)
resolution : 0.1, 0.1  (x, y)
extent     : -180, 180, -90, 90  (xmin, xmax, ymin, ymax)
crs        : +proj=longlat +ellps=WGS84 +no_defs 
source     : C:/lab/project/c_gls_SWI10_201704111200_GLOBE_ASCAT_V3.1.1.nc 
names      : Percent.Valid.Observations.with.T.15 
z-value    : 2017-04-11 
zvar       : VOBS_015
swia2018 < - brick ( "c_gls_SWI10_201804111200_GLOBE_ASCAT_V3.1.1.nc" )
swia2018
plot (swia2018, main= " 2018 " )
class      : RasterLayer 
dimensions : 1800, 3600, 6480000  (nrow, ncol, ncell)
resolution : 0.1, 0.1  (x, y)
extent     : -180, 180, -90, 90  (xmin, xmax, ymin, ymax)
crs        : +proj=longlat +ellps=WGS84 +no_defs 
source     : C:/lab/project/c_gls_SWI10_201804111200_GLOBE_ASCAT_V3.1.1.nc 
names      : Percent.Valid.Observations.with.T.15 
z-value    : 2018-04-11 
zvar       : VOBS_015

swia2019 < - brick ( "c_gls_SWI10_201904011200_GLOBE_ASCAT_V3.1.1.nc" )
swia2019
plot (swia2019, main= " 2019 " )


class      : RasterLayer 
dimensions : 1800, 3600, 6480000  (nrow, ncol, ncell)
resolution : 0.1, 0.1  (x, y)
extent     : -180, 180, -90, 90  (xmin, xmax, ymin, ymax)
crs        : +proj=longlat +ellps=WGS84 +no_defs 
source     : C:/lab/project/c_gls_SWI10_201904011200_GLOBE_ASCAT_V3.1.1.nc 
names      : Percent.Valid.Observations.with.T.15 
z-value    : 2019-04-01 
zvar       : VOBS_015
swia2020 < - brick ( "c_gls_SWI10_202004111200_GLOBE_ASCAT_V3.1.1.nc" )
swia2020
plot (swia2020, main= " 2020 " )
class      : RasterLayer 
dimensions : 1800, 3600, 6480000  (nrow, ncol, ncell)
resolution : 0.1, 0.1  (x, y)
extent     : -180, 180, -90, 90  (xmin, xmax, ymin, ymax)
crs        : +proj=longlat +ellps=WGS84 +no_defs 
source     : C:/lab/project/c_gls_SWI10_202004111200_GLOBE_ASCAT_V3.1.1.nc 
names      : Percent.Valid.Observations.with.T.15 
z-value    : 2020-04-11 
zvar       : VOBS_015 


To make par  making 2 groups because 14 imagesin one page got too small
par(mfrow=c(3,3))
plot (swia2007, main= " 2007 " )
plot (swia2008, main= " 2008 " )
plot (swia2009, main= " 2009 " )
plot (swia2010, main= " 2010 " )
plot (swia2011, main= " 2011 " )
plot (swia2012, main= " 2012 " )
plot (swia2013, main= " 2013 " )

par(mfrow=c(3,3))
plot (swia2014, main= " 2014 " )
plot (swia2015, main= " 2015 " )
plot (swia2016, main= " 2016 " )
plot (swia2017, main= " 2017 " )
plot (swia2018, main= " 2018 " )
plot (swia2019, main= " 2019 " )
plot (swia2020, main= " 2020 " )

To find different part from 2007 to 2020
dif <- swia2007 - swia2009 
cldif <- colorRampPalette(c('blue','yellow','red'))(100)  
plot(dif, col=cldif , main= "2007 - 2009" )
dif <- swia2009 - swia2011
cldif <- colorRampPalette(c('blue','yellow','red'))(100)  
plot(dif, col=cldif , main= "2009 - 2011" )
dif <- swia2011 - swia2013
cldif <- colorRampPalette(c('blue','yellow','red'))(100)  
plot(dif, col=cldif , main= "2011 - 2013" )

dif <- swia2013 - swia2015
cldif <- colorRampPalette(c('blue','yellow','red'))(100)  
plot(dif, col=cldif , main= "2013 - 2015" )
dif <- swia2015 - swia2017
cldif <- colorRampPalette(c('blue','yellow','red'))(100)  
 plot(dif, col=cldif , main= "2015 - 2017" )
dif <- swia2017 - swia2019
cldif <- colorRampPalette(c('blue','yellow','red'))(100)  
 plot(dif, col=cldif , main= "2017 - 2019" )
dif <- swia2019 - swia2020
cldif <- colorRampPalette(c('blue','yellow','red'))(100)  
 plot(dif, col=cldif , main= "2019 - 2020" )

par(mfrow=c(3,3))
plot(dif, col=cldif , main= "2007 - 2009" )
plot(dif, col=cldif , main= "2009 - 2011" )
plot(dif, col=cldif , main= "2011 - 2013" )
plot(dif, col=cldif , main= "2013 - 2015" )
plot(dif, col=cldif , main= "2015 - 2017" )
plot(dif, col=cldif , main= "2017 - 2019" )
plot(dif, col=cldif , main= "2019 - 2020" )
For analysis the tend of  different from 2007 to 2020 I give another time
dif 1 <- swia2007 - swia2011 
cldif <- colorRampPalette(c('blue','yellow','red'))(100)  
plot(dif1, col=cldif , main= "2007 - 2011" )
dift <- swia2011 - swia2015 
cldif <- colorRampPalette(c('blue','yellow','red'))(100)  
plot(dift, col=cldif , main= "2011 - 2015" )
dift <- swia2015 - swia2020 
cldif <- colorRampPalette(c('blue','yellow','red'))(100)  
plot(dift, col=cldif , main= "2015- 2020" )
par(mfrow=c(3,1))
plot(dift, col=cldif , main= "2007 - 2011" )
plot(dift, col=cldif , main= "2011 - 2015" )
plot(dift, col=cldif , main= "2015- 2020" )

to make crop from the location there is different 
difa <- swia2007 - swia2011 
cldifa <- colorRampPalette(c('blue','yellow','red'))(100)  
plot(difa, col=cldifa , main= "2007 - 2011" )
difb <- swia2011 - swia2015 
cldifb <- colorRampPalette(c('blue','yellow','red'))(100)  
plot(difb, col=cldifb , main= "2011 - 2015" )
difc <- swia2015 - swia2020 
cldifc <- colorRampPalette(c('blue','yellow','red'))(100)  
plot(difb, col=cldifc , main= "2015 - 2020" )
to make crop for north 
ext <- c(-50,100 ,40,100)  
difa_north <- crop(difa, ext)
plot(difa_north, col=cl , main= "north 2007 - 2011")
ext <- c(-50,100 ,40,100)  
difb_north <- crop(difb, ext)
plot(difb_north, col=cl , main= "north 2011 - 2015")
ext <- c(-50,100 ,40,100)  
difc_north <- crop(difc, ext)
plot(difc_north, col=cl , main= "north 2015 - 2020")
to make crop from America
ext <- c(-150,-50,0,80)  
difa_america <- crop(difa, ext)
plot(difa_america, col=cl , main= "america 2007 - 2011")
ext <- c(-150,-50,0,80)  
difb_america <- crop(difb, ext)
plot(difb_america, col=cl , main= "america 2011 - 2015")
ext <- c(-150,-50,0,80)  
difc_america <- crop(difc, ext)
plot(difc_america, col=cl , main= "america 2015 - 2020")




















