gmt begin terr png
    set input=D:\matlabprogram\crust1.0\uppercrust103_120_2_23.txt
    set out=grd.grd
    gmt surface %input% -R103/120/2/23 -I1d -G%out% 
    gmt makecpt -T0/35/1 -Crainbow -Z
    gmt basemap -Ba5f -R103/120/2/23 -JM7i
    gmt grdimage %out% -I 
    gmt coast -R103/120/2/23 -W1/0.5p,white,dashed -A100/0/1 -Da
    gmt colorbar -Bxaf -DjMR+o-0.5i/0i+m -By+l"(km)" -S -I
    REM gmt grd2xyz %input% -R100/130/0/30 > seabedm.grd

gmt end show
