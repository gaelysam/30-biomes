# 30 Biomes for Minetest

This mod is still experimental. It provides 30 main biomes and 10 beach/sea biomes for Minetest Game. Compatible with all core mapgens *except v6*.

Biomes are all registered for now, but they are not all different for now, because there is not enough plants. Obviously there will be more plants in the future.

![Screenshot](https://raw.githubusercontent.com/Gael-de-Sailly/30-biomes/master/screenshot.png)

## Diagram
* Horizontal axis: **temperature**
* Vertical axis: **humidity**

The values are arbitrary units that are generally between 0 and 100 but might exceed these limits.
![Voronoi diagram](https://raw.githubusercontent.com/Gael-de-Sailly/30-biomes/master/diagram/voronoi_diagram.png)

It was taken from GeoGebra, with the file `30-biomes.ggb` (GeoGebra diagram).

## Data structure
The properties of each biome are stored in `biomes.csv`. You would find it awfully unreadable if you open it with a text editor. Actually you should open it with a spreadsheet software like Calc or Excel. To modify it, simply modify the cells and save the file with the same format.

## License
Under [WTFPL](http://www.wtfpl.net/txt/copying/).
