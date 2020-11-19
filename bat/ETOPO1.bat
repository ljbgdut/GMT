gmt begin etopo png
    set input1=goce254.txt -i0,1,3
    set output1=gocegrd.grd
    set input2=SIO250km.txt
    set output2=sio250.grd
    set input3=etopo1-ggt.txt -i0,1,3
    set output3=etopo1ggt.grd
    gmt xyz2grd %input1% -R109/119/6/20 -I10m -G%output1%
    gmt surface %input2% -R109/119/6/20 -I10m -G%output2%
    gmt surface %input3% -R109/119/6/20 -I10m -G%output3%
    gmt set FONT_TITLE 15p,41,black
    gmt set MAP_TITLE_OFFSET 6p

    gmt subplot begin 1x3 -Fs8i/6i -BWSEN -A(a)+JLB+o-4.2i/0.3i -M-1i/0.5i
        gmt subplot set 0

        gmt grd2cpt %output1% -R109/119/6/20 -Cno_green -Z
        gmt basemap -R109/119/6/20 -JM? -BWSen+t"GOCE vertical gravity gradient" -Ba2f
         
        gmt grdimage %output1% -C
        gmt coast -R109/119/6/20 -JM? -W1/1p,black,dashed -N1/1p,chocolate4,dashed -A10/0/4
        gmt colorbar -C -DjMR+o-0.5i/0i+m -Bxa0.1f -By+l"(E)" -S -I

        gmt subplot set 1

        gmt grd2cpt %output2% -R109/119/6/20 -Cno_green -Z
        gmt basemap -R109/119/6/20 -JM? -BWSen+t"vertical gravity gradient derived from satellite altimetry" -Ba2f
        gmt grdimage %output2% -C
        gmt coast -R109/119/6/20 -JM? -W1/1p,black,dashed -N1/1p,chocolate4,dashed -A10/0/4
        gmt colorbar -C -DjMR+o-0.5i/0i+m -Bxa0.1f -By+l"(E)" -S -I

        gmt subplot set 2

        gmt grd2cpt %output3% -R109/119/6/20 -Cno_green -Z
        gmt basemap -R109/119/6/20 -JM? -BWSen+t"vertical gravity gradient from Terrain" -Ba2f
        gmt grdimage %output3% -C
        gmt coast -R109/119/6/20 -JM? -W1/1p,black,dashed -N1/1p,chocolate4,dashed -A10/0/4
        gmt colorbar -C -DjMR+o-0.5i/0i+m -Bxa0.5f -By+l"(E)" -S -I

    gmt subplot end
gmt end show