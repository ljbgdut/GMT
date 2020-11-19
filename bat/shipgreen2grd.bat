gmt begin output png
    set input=shipmedian.txt
    set input2=shipspatial.txt
    set grdfile=shipgrd.grd
    gmt greenspline %input% -D3 -Sq0.99 -R109:00:30/118:59:30/6:00:30/19:59:30 -I1m -G%grdfile%
    REM gmt surface %input% -R109:00:30/118:59:30/6:00:30/19:59:30 -I1m -G%grdfile%
    gmt grd2cpt %grdfile% -R109/119/6/20 -Ctopo -Z -D -E

    gmt basemap -R109/119/6/20 -JM7i -Ba2f -BWSEN
    gmt grdimage %grdfile% -R109/119/6/20
    gmt coast -R109/119/6/20 -JM7i -W1/1.5p,black,dashed -N1/1p,chocolate4,dashed
    gmt colorbar -DjMR+w6i/0.3i+o-0.8i/0i+m -Bxa1000f -By+l"(m)" -S
    gmt grd2xyz %grdfile% -R109/119/6/20 > shipgrd.txt
gmt end show