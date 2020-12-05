gmt begin terr png
    set input=D:\Sea_data_set\Topomodel\SIOtopo_20.1.nc
    REM gmt grdsample %input% -R100/130/0/30 -I10m -G%out% 
    REM gmt makecpt -T0/35/1 -Crainbow -Z
    gmt basemap -Ba5f -R100/130/0/30 -JM7i
    gmt grdimage %out% -I 
    REM gmt grd2xyz %input% -R100/130/0/30  > ETOPO1_100_130_0_30.txt

gmt end show
