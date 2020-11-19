gmt begin pictures\output png
    set input=D:\Sea_data_set\Satellite_altimetry_gravity\curv_30.1.nc
    gmt grd2cpt %input% -R105/125/5/25 -Crainbow -Z -D -F -H > vgg301.cpt
    gmt basemap -R105/125/5/25 -JM7i -Ba5f -BWSen
    
    gmt grdimage %input% -I
    REM gmt coast -R103/120/2/23 -JM7i -W1/0.5p,black,dashed -A100/0/1 -G220,220,220 -Da
    gmt colorbar -C -DjMR+o-0.8i/0i+m -Bxaf -By+l"(E)" -I

    REM gmt grd2xyz %input% -R100/129:59:00/0/29:59:00 > ETOPO1_100_130_0_30.txt
gmt end show