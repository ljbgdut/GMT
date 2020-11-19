gmt begin pictures\GA png
    set siobouger=data\grdbouger.txt
    set siobougergrd=data\grd.grd
    set seg=data\seg1m-grav.txt -i0,1,3
    set seggrd=data\seg1m-grav.grd
    set dseg=data\bouger_seg.txt
    set dseggrd=data\bouger_seg.grd
    gmt surface %siobouger% -G%siobougergrd% -I1m -R117/121/19/24
    gmt surface %seg% -G%seggrd% -I1m -R117/121/19/24
    gmt surface %dseg% -G%dseggrd% -I1m -R117/121/19/24

    gmt set FONT_TITLE 15p,41,black
    gmt set MAP_TITLE_OFFSET 6p

    gmt subplot begin 1x3 -Fs8i/6i -BWSEN -A(a)+JLB+o-4.2i/0.3i -M-1i/0.5i
        gmt subplot set 0

        gmt grd2cpt %dseggrd% -R117/121/19/24 -Crainbow -Z
        gmt basemap -R117/121/19/24 -JM? -BWSen+t"GRAV29.1 bouguer" -Baf
         
        gmt grdimage %siobougergrd% -C
        gmt coast -R117/121/19/24 -JM? -W1/1p,black,dashed -N1/1p,chocolate4,dashed -A10/0/4
        gmt colorbar -C -DjMR+o-0.5i/0i+m -Bxa100f -By+l"(mgal)" -S -I

        gmt subplot set 1

        gmt grd2cpt %seggrd% -R117/121/19/24 -Crainbow -Z
        gmt basemap -R117/121/19/24 -JM? -BWSen+t"sediments gravity" -Baf
        gmt grdimage %seggrd% -C
        gmt coast -R117/121/19/24 -JM? -W1/1p,black,dashed -N1/1p,chocolate4,dashed -A10/0/4
        gmt colorbar -C -DjMR+o-0.5i/0i+m -Bxa20f -By+l"(mgal)" -S -I

        gmt subplot set 2

        gmt grd2cpt %dseggrd% -R117/121/19/24 -Crainbow -Z
        gmt basemap -R117/121/19/24 -JM? -BWSen+t"Sediments correction" -Baf
        gmt grdimage %dseggrd% -C
        gmt coast -R117/121/19/24 -JM? -W1/1p,black,dashed -N1/1p,chocolate4,dashed -A10/0/4
        gmt colorbar -C -DjMR+o-0.5i/0i+m -Bxa100f -By+l"(mgal)" -S -I

    gmt subplot end
gmt end show