gmt begin wavelet png
    set D1=D1.txt
    set D2=D2.txt
    set D3=D3.txt
    set D4=D4.txt
    set D5=D5.txt
    set D6=D6.txt
    set gD1=gD1.grd
    set gD2=gD2.grd
    set gD3=gD3.grd
    set gD4=gD4.grd
    set gD5=gD5.grd
    set gD6=gD6.grd
    gmt surface %D1% -G%gD1% -I1m -R103/120/2/23
    gmt surface %D2% -G%gD2% -I1m -R103/120/2/23
    gmt surface %D3% -G%gD3% -I1m -R103/120/2/23
    gmt surface %D4% -G%gD4% -I1m -R103/120/2/23
    gmt surface %D5% -G%gD5% -I1m -R103/120/2/23
    gmt surface %D6% -G%gD6% -I1m -R103/120/2/23

    gmt subplot begin 3x2 -Fs8i/6i -BWSEN -A(a)+JLB+o-4.2i/0.3i -M-0.8i/0.5i
        gmt subplot set 0 
        gmt grd2cpt %gD1% -Crainbow -Z  -D
        gmt basemap -Ba5f -R103/120/2/23 -JM? -BWSEN+t"A1"
        gmt grdimage %gD1% -C 
        gmt coast -R103/120/2/23 -JM? -W1/1p,black,dashed -N1/1p,chocolate4,dashed
        gmt colorbar -C -DjMR+o-0.6i/0i+m -Bxa20f -By+l"(E)"

        gmt subplot set 1 
        gmt grd2cpt %gD2% -Crainbow -Z  -D
        gmt basemap -Ba5f -R103/120/2/23 -JM? -BWSEN+t"A2"
        gmt grdimage %gD2% -C
        gmt coast -R103/120/2/23 -JM? -W1/1p,black,dashed -N1/1p,chocolate4,dashed
        gmt colorbar -C -DjMR+o-0.6i/0i+m -Bxa20f -By+l"(E)" 

        gmt subplot set 2 
        gmt grd2cpt %gD3% -Crainbow -Z -D
        gmt basemap -Ba5f  -R103/120/2/23 -JM? -BWSEN+t"A3"
        gmt grdimage %gD3% -C
        gmt coast -R103/120/2/23 -JM? -W1/1p,black,dashed -N1/1p,chocolate4,dashed
        gmt colorbar -C -DjMR+o-0.6i/0i+m -Bxa5f -By+l"(E)" 

        gmt subplot set 3 
        gmt grd2cpt %gD4% -Crainbow -Z  -D
        gmt basemap -Ba5f  -R103/120/2/23 -JM? -BWSEN+t"A4"
        gmt grdimage %gD4% -C
        gmt coast -R103/120/2/23 -JM? -W1/1p,black,dashed -N1/1p,chocolate4,dashed
        gmt colorbar -C -DjMR+o-0.6i/0i+m -Bxa5f -By+l"(E)" 

        gmt subplot set 4
        gmt grd2cpt %gD5% -Crainbow -Z  -D 
        gmt basemap -Ba5f  -R103/120/2/23 -JM? -BWSEN+t"A5"
        gmt grdimage %gD5% -C
        gmt coast -R103/120/2/23 -JM? -W1/1p,black,dashed -N1/1p,chocolate4,dashed
        gmt colorbar -C -DjMR+o-0.6i/0i+m -Bxa5f -By+l"(E)" 

        gmt subplot set 5 
        gmt grd2cpt %gD6% -Crainbow -Z -D
        gmt basemap -Ba5f -R103/120/2/23 -JM? -BWSEN+t"A6"
        gmt grdimage %gD6% -C
        gmt coast -R103/120/2/23 -JM? -W1/1p,black,dashed -N1/1p,chocolate4,dashed
        gmt colorbar -C -DjMR+o-0.6i/0i+m -Bxa5f -By+l"(E)" 

    gmt subplot end

gmt end show