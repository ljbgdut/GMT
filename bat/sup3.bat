gmt begin crust_grav_goce_moho png E600
    set input1=crust1mohodp.txt
    set output1=crust.grd
    set output2=moho.grd
    set input3=D:\matlabprogram\mohoinvers\ParkerMoho\MohogoceA3.txt
    set output3=goceA3.grd
    set seab=line\seabasinline.txt
    set fault=line\fault.txt
    set rig1=line\ridge1.txt
    set rig2=line\ridge2.txt
    set sd=line\subduction.txt    
    gmt xyz2grd %input1% -R105:00:30/124:59:30/5:00:30/24:59:30 -I1m -G%output1%
    gmt xyz2grd %input3% -R105/125/5/25 -I10m -G%output3%
    gmt set FONT 18p,Helvetica,black
    gmt set FONT_TAG 32p,Helvetica,black
    gmt set MAP_TITLE_OFFSET 6p
    gmt makecpt -T0/35/1 -Crainbow -Z
    gmt subplot begin 1x3 -Fs9i/6i -BWSEN -A(a)+jTL+o1.7i/0.1i -M-1.5i/0.5i
        gmt subplot set 0

        gmt basemap -R105/125/5/25 -JM? -BWSen+t"CRUST1.0 Moho depth" -Ba5f
        gmt grdmath %output1% ABS = grdcrust.grd
        gmt grdimage grdcrust.grd -C -I
        gmt coast -R105/125/5/25 -W1/0.5p,black,dashed -A100/0/1 -G220,220,220 -Da

        gmt subplot set 1

        gmt basemap -R105/125/5/25 -JM? -BWSen+t"Gravity anomaly A4 Moho depth" -Ba5f
        gmt grdimage %output2% -C -I
        gmt plot %seab% -W1.5p,59,dashed
        gmt plot %fault% -W2p,black,dashed
        gmt plot %rig1% -W2p,25/25/112,dashed
        gmt plot %rig2% -W2p,25/25/112,dashed
        gmt plot %sd% -W2.5p,139/0/0
        gmt coast -R105/125/5/25 -W1/0.5p,black,dashed -A100/0/1 -G220,220,220 -Da

        gmt subplot set 2

        gmt basemap -R105/125/5/25 -JM? -BWSen+t"GOCE A3 Moho depth" -Ba5f
        gmt grdimage %output3% -C -I
        gmt plot %seab% -W1.5p,59,dashed
        gmt plot %fault% -W2p,black,dashed
        gmt plot %rig1% -W2p,25/25/112,dashed
        gmt plot %rig2% -W2p,25/25/112,dashed
        gmt plot %sd% -W2.5p,139/0/0
        gmt coast -R105/125/5/25 -W1/0.5p,black,dashed -A100/0/1 -G220,220,220 -Da
        gmt colorbar -C -DjBC+w8i/0.2i+o-7i/-0.65i+m -Bxaf -By+l"(km)" -S -I

    gmt subplot end
gmt end show