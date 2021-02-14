###exercise_1.R ###

library(sf)
library(raster)
library(tmap)
library(spData)
library(spDataLarge)

# We wrote the code to create a new map of New Zealand.
# Your role is to improve this map based on the suggestions below.
tm_shape(nz_elev)  +
  tm_raster(title = "elev", 
            style = "cont",
            palette = "BuGn") +
  tm_shape(nz) +
  tm_borders(col = "red", 
             lwd = 3) +
  tm_scale_bar(breaks = c(0, 100, 200),
               text.size = 1) +
  tm_compass(position = c("LEFT", "center"),
             type = "rose", 
             size = 2) +
  tm_credits(text = "A. Sobotkova, 2020") +
  tm_layout(main.title = "My map",
            bg.color = "orange",
            inner.margins = c(0, 0, 0, 0))

#### Exercise I ####

# 1. Change the map title from "My map" to "New Zealand".
# 2. Update the map credits with your own name and today's date.
# 3. Change the color palette to "-RdYlGn". 
#    (You can also try other palettes from http://colorbrewer2.org/)
# 4. Put the north arrow in the top right corner of the map.
# 5. Improve the legend title by adding the used units (m asl).
# 6. Increase the number of breaks in the scale bar.
# 7. Change the borders' color of the New Zealand's regions to black. 
#    Decrease the line width.
# 8. Change the background color to any color of your choice.

# /Start Code/ #
tm_shape(nz_elev)  +
  tm_raster(title = "elev", 
            style = "cont",
            palette = "-RdYlGn") +
  tm_shape(nz) +
  tm_borders(col = "black", 
             lwd = 1) +
  tm_scale_bar(breaks = c(0, 100, 200, 300, 400, 500),
               text.size = 1) +
  tm_compass(position = c("RIGHT", "top"),
             type = "rose", 
             size = 2) +
  tm_credits(text = "A.R, 09.02.2020") +
  tm_layout(main.title = "New Zealand",
            bg.color = "blue",
            inner.margins = c(0, 0, 0, 0))
# /End Code/ #


#### Exercise II ####
#     Read two new datasets, `srtm` and `zion`, using the code below.
#     To create a new map representing these datasets.

#reading the datasets
srtm = raster(system.file("raster/srtm.tif", package = "spDataLarge"))
zion = read_sf(system.file("vector/zion.gpkg", package = "spDataLarge"))

# /Start Code/ 
# For srtm-datset
tmap_mode("plot")
tm_shape(srtm)  +
  tm_raster(title = "srtm", 
            style = "cont",
            palette = "-RdYlGn") +
  tm_shape(nz) +
  tm_borders(col = "black", 
             lwd = 1) +
  tm_scale_bar(breaks = c(0, 100, 150, 200),
               text.size = 1)+
  tm_compass(position = c("RIGHT", "top"),
             type = "rose", 
             size = 2) +
  tm_credits(text = "Aksel Roald, 09.02.2020") +
  tm_layout(main.title = "srtm-map",
            inner.margins = c(0, 0, 0, 0))+
  tm_legend(show= TRUE)

#For zion-dataset I dont know how to do this, when this didnt work.
tmap_mode("plot")
tm_shape(zion)  +
  tm_raster(title = "srtm", 
            style = "cont",
            palette = "-RdYlGn") +
  tm_shape(nz) +
  tm_borders(col = "black", 
             lwd = 1) +
  tm_scale_bar(breaks = c(0, 100, 150, 200),
               text.size = 1)+
  tm_compass(position = c("RIGHT", "top"),
             type = "rose", 
             size = 2) +
  tm_credits(text = "A.R, 09.02.2020") +
  tm_layout(main.title = "srtm-map",
            inner.margins = c(0, 0, 0, 0))+
  tm_legend(show= TRUE)
# /End Code/ #



### exercise_2.R ### Did not get to do this.

#Libraries needed
library(sf)
library(raster)
library(tmap)
library(spData)
library(spDataLarge)

#Reading the files
srtm <- raster(system.file("raster/srtm.tif", package = "spDataLarge"))
zion <- read_sf(system.file("vector/zion.gpkg", package = "spDataLarge"))


#### Exercise I ####

# /Start Code/ 
# 1. Display the `zion` object and view its structure.

# What type of data does it store? 
class(zion)# "sf","tbl_df", "tbl", "data.frame"

# What is the coordinate system used?
st_crs(zion) #WGS84

# How many attributes does it contain?
  # Did not understand.

# What is its geometry?
  #Did not understand.

# 2 Display the `srtm` object and view its structure.
# What type of data does it store?
class(srtm)#raster

# What is the coordinate system used?
st_crs(srtm) #4326 or WGS 84

# How many attributes does it contain?
nlayers(srtm)#1

# How many dimensions does it have?
ncol(srtm)#465
nrow(srtm)#457

# What is the data resolution?
res(srtm)#0.0008333333 0.0008333333
# /End Code/ #

#### Exercise II ####

# 1. Reproject the `srtm` dataset into the coordinate reference system used in the `zion` object. 
# Create a new object `srtm2`
# Vizualize the results using the `plot()` function.
# 2. Reproject the `zion` dataset into the coordinate reference system used in the `srtm` object.
# Create a new object `zion2`
# Vizualize the results using the `plot()` function.


# Your solution

# /Start Code/ #



# /End Code/ #



