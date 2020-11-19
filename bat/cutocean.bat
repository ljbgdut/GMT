gmt begin cut png
    set input2=D:\matlabprogram\mohoinvers\grav30.1_105_125_5_25.txt
    set output2=fa.grd
    gmt xyz2grd %input2% -R105:00:30/124:59:30/5:00:30/24:59:30 -I1m -G%output2%
    gmt grd2cpt %output2% -R105/125/5/25 -Crainbow -Z
    gmt coast -R105/125/5/25 -B -W1/0.5p,black,dashed -A100/0/1 -S -Da -JM7i
    gmt grdimage %output2% 
    gmt colorbar -C -DjMR+o-0.5i/0i+m -Bxa50f -By+l"(mGal)" -S -I
    gmt select %input2% -R105/125/5/25 -Da -A100/0/1 -Nk/s >oceangrav30.1_105_125_5_25.txt
gmt end show