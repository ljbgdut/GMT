gmt begin CRUSTandINVERS png

    set input=crust1mohodp.txt
    set grdfile=moho.grd
    set grd=crust.grd
    gmt makecpt -T0/35/1 -Crainbow -Z
    gmt set FONT 12p,Helvetica,black
    gmt set FONT_TAG 32p,Helvetica,black
    gmt subplot begin 1x2 -Fs8i/6i -BWSen -A(a)+jTL+o1.2i/0.1i -M-0.8i
        gmt subplot set 0 
        gmt basemap -Ba5f -R105/125/5/25 -JM?
        gmt grdmath %grd% ABS = grdcrust.grd
        gmt grdimage grdcrust.grd -C -I 
        gmt coast -R105/125/5/25 -W1/0.5p,black,dashed -A100/0/1 -G220,220,220 -Da

        gmt subplot set 1 
        gmt basemap -Ba5f -R105/125/5/25 -JM?
        gmt grdimage %grdfile% -C -I
        gmt coast -R105/125/5/25 -W1/0.5p,black,dashed -A100/0/1 -G220,220,220 -Da
        gmt colorbar -C -DjBC+w6i/0.2i+o-3.5i/-0.6i+m -Bxaf -By+l"(km)" -S -I
    gmt subplot end

gmt end show