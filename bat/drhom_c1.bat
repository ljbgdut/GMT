gmt begin drhom_c_105_125_5_25 png E600
    set input1=D:\matlabprogram\crust1.0\drhom_c105_120_5_25.txt
    set output1=grd1.grd
    gmt xyz2grd %input1% -R105/125/5/25 -I1d -G%output1%  
    gmt set FONT 18p,Helvetica,black
    gmt grd2cpt %output1% -Crainbow -Z
    gmt basemap -R105/125/5/25 -JM8i -BWSen -Ba5f
    gmt grdimage %output1% -C -I
    gmt coast -R105/125/5/25 -W1/0.5p,white,dashed -A100/0/1 -Da
    gmt colorbar -C -DjMR+o-0.7i/0i+m -Bx0.05f -By+l"g/cm@+3@+" -S -I

gmt end show