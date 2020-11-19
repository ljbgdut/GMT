gmt begin wavelet png
    set D1=goce254.txt -i0,1,3
    set D2=mTzz254.txt -i0,1,3
    set D3=dTzz254.txt -i0,1,3
    set D4=fft.txt -i0,1,3
    set D5=posion.txt -i0,1,3
    set D6=mTzz5km.txt -i0,1,3
    set D7=dfft2mTzz.txt -i0,1,3
    set D8=dposion2mTzz.txt -i0,1,3
    set gD1=gD1.grd
    set gD2=gD2.grd
    set gD3=gD3.grd
    set gD4=gD4.grd
    set gD5=gD5.grd
    set gD6=gD6.grd
    set gD7=gD7.grd
    set gD8=gD8.grd
    gmt surface %D1% -G%gD1% -I1m -R103/120/2/23
    gmt surface %D2% -G%gD2% -I1m -R103/120/2/23
    gmt surface %D3% -G%gD3% -I1m -R103/120/2/23
    gmt surface %D4% -G%gD4% -I1m -R103/120/2/23
    gmt surface %D5% -G%gD5% -I1m -R103/120/2/23
    gmt surface %D6% -G%gD6% -I1m -R103/120/2/23
    gmt surface %D7% -G%gD7% -I1m -R103/120/2/23
    gmt surface %D8% -G%gD8% -I1m -R103/120/2/23

    gmt subplot begin 4x2 -Fs8i/6i -BWSEN -A(a)+JLB+o-4.2i/0.3i -M-0.8i/0.5i
        gmt subplot set 0 
        gmt grd2cpt %gD1% -Crainbow -Z -E -D
        gmt basemap -Ba5f -R103/120/2/23 -JM? -BWSEN+t"GOCE r=6621830m"
        gmt grdimage %gD1% -C 
        gmt coast -R103/120/2/23 -JM? -W1/1p,black,dashed -N1/1p,chocolate4,dashed
        gmt colorbar -C -DjMR+o-0.6i/0i+m -Bxa0.1f -By+l"(E)"

        gmt subplot set 1 
        gmt grd2cpt %gD2% -Crainbow -Z -E -D
        gmt basemap -Ba5f -R103/120/2/23 -JM? -BWSEN+t"EGM2008 Model r=6621830m"
        gmt grdimage %gD2% -C
        gmt coast -R103/120/2/23 -JM? -W1/1p,black,dashed -N1/1p,chocolate4,dashed
        gmt colorbar -C -DjMR+o-0.6i/0i+m -Bxa0.1f -By+l"(E)" 

        gmt subplot set 2 
        gmt grd2cpt %gD3% -Crainbow -Z -E -D
        gmt basemap -Ba5f  -R103/120/2/23 -JM? -BWSEN+t"difference between (a) and (b)"
        gmt grdimage %gD3% -C
        gmt coast -R103/120/2/23 -JM? -W1/1p,black,dashed -N1/1p,chocolate4,dashed
        gmt colorbar -C -DjMR+o-0.6i/0i+m -Bxa0.001f -By+l"(E)" 

        gmt subplot set 3 
        gmt grd2cpt %gD4% -Crainbow -Z  -D
        gmt basemap -Ba5f  -R103/120/2/23 -JM? -BWSEN+t"Downward Tzz by FFT Method"
        gmt grdimage %gD4% -C
        gmt coast -R103/120/2/23 -JM? -W1/1p,black,dashed -N1/1p,chocolate4,dashed
        gmt colorbar -C -DjMR+o-0.6i/0i+m -Bxa5f -By+l"(E)" 

        gmt subplot set 4
        gmt grd2cpt %gD5% -Crainbow -Z  -D 
        gmt basemap -Ba5f  -R103/120/2/23 -JM? -BWSEN+t"Downward Tzz by Poisson Integral"
        gmt grdimage %gD5% -C
        gmt coast -R103/120/2/23 -JM? -W1/1p,black,dashed -N1/1p,chocolate4,dashed
        gmt colorbar -C -DjMR+o-0.6i/0i+m -Bxa5f -By+l"(E)" 

        gmt subplot set 5 
        gmt grd2cpt %gD6% -Crainbow -Z -D
        gmt basemap -Ba5f -R103/120/2/23 -JM? -BWSEN+t"EGM2008 Model R=6376830m"
        gmt grdimage %gD6% -C
        gmt coast -R103/120/2/23 -JM? -W1/1p,black,dashed -N1/1p,chocolate4,dashed
        gmt colorbar -C -DjMR+o-0.6i/0i+m -Bxa5f -By+l"(E)" 

        gmt subplot set 6
        gmt grd2cpt %gD7% -Crainbow -Z -E -D
        gmt basemap -Ba5f -R103/120/2/23 -JM? -BWSEN+t"difference between (d) and (f)"
        gmt grdimage %gD7% -C
        gmt coast -R103/120/2/23 -JM? -W1/1p,black,dashed -N1/1p,chocolate4,dashed
        gmt colorbar -C -DjMR+o-0.6i/0i+m -Bxa5f -By+l"(E)" 
        
        gmt subplot set 7 
        gmt grd2cpt %gD8% -Crainbow -Z -E -D
        gmt basemap -Ba5f -R103/120/2/23 -JM? -BWSEN+t"difference between (e) and (f)"
        gmt grdimage %gD8% -C
        gmt coast -R103/120/2/23 -JM? -W1/1p,black,dashed -N1/1p,chocolate4,dashed
        gmt colorbar -C -DjMR+o-0.6i/0i+m -Bxa5f -By+l"(E)" 

    gmt subplot end

gmt end show