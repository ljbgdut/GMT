gmt begin to_fa_bugr png E600
    set input1=D:\matlabprogram\mohoinvers\topov20.1_105_125_5_25.txt
    set output1=tp.grd
    set input2=D:\matlabprogram\mohoinvers\grav30.1_105_125_5_25.txt
    set output2=fa.grd
    set input3=D:\matlabprogram\mohoinvers\bugrv30.1_105_125_5_25.txt
    set output3=bugr.grd
    set seab=line\seabasinline.txt
    set fault=line\fault.txt
    set rig1=line\ridge1.txt
    set rig2=line\ridge2.txt
    set sd=line\subduction.txt

    gmt xyz2grd %input1% -R105:00:30/124:59:30/5:00:30/24:59:30 -I1m -G%output1%
    gmt xyz2grd %input2% -R105:00:30/124:59:30/5:00:30/24:59:30 -I1m -G%output2%
    gmt xyz2grd %input3% -R105:00:30/124:59:30/5:00:30/24:59:30 -I1m -G%output3%
    gmt set FONT_TITLE 20p,41,black
    gmt set MAP_TITLE_OFFSET 6p

    gmt subplot begin 1x3 -Fs9i/6i -BWSEN -A(a)+jTL+o1.7i/0.1i -M-1i/0.5i
        gmt subplot set 0

        gmt grd2cpt %output1% -R105/125/5/25 -Cwysiwyg -Z
        gmt basemap -R105/125/5/25 -JM? -BWSen+t"topoV20.1" -Ba5f
        gmt grdimage %output1% -C
        gmt plot %seab% -W1.5p,59,dashed
        gmt plot %fault% -W2p,black,dashed
        gmt plot %rig1% -W2p,255/0/0,dashed
        gmt plot %rig2% -W2p,255/0/0,dashed
        gmt plot %sd% -W2.5p,139/0/0
        gmt coast -R105/125/5/25 -W1/0.5p,black,dashed -A100/0/1 -G220,220,220 -Da
        gmt colorbar -C -DjMR+o-0.5i/0i+m -Bxa1000f -By+l"(m)" -S -I

        gmt subplot set 1

        gmt grd2cpt %output2% -R105/125/5/25 -Crainbow -Z
        gmt basemap -R105/125/5/25 -JM? -BWSen+t"Free air gravity anomaly V30.1" -Ba5f
        gmt grdimage %output2% -C
        gmt plot %seab% -W1.5p,59,dashed
        gmt plot %fault% -W2p,black,dashed
        gmt plot %rig1% -W2p,255/0/0,dashed
        gmt plot %rig2% -W2p,255/0/0,dashed
        gmt plot %sd% -W2.5p,139/0/0
        gmt coast -R105/125/5/25 -W1/0.5p,black,dashed -A100/0/1 -G220,220,220 -Da
        gmt colorbar -C -DjMR+o-0.5i/0i+m -Bxa50f -By+l"(mGal)" -S -I

        gmt subplot set 2

        gmt grd2cpt %output3% -R105/125/5/25 -Crainbow -Z
        gmt basemap -R105/125/5/25 -JM? -BWSen+t"Bouger gravity anomaly" -Ba5f
        gmt grdimage %output3% -C
        gmt plot %seab% -W1.5p,59,dashed
        gmt plot %fault% -W2p,black,dashed
        gmt plot %rig1% -W2p,255/0/0,dashed
        gmt plot %rig2% -W2p,255/0/0,dashed
        gmt plot %sd% -W2.5p,139/0/0
        gmt coast -R105/125/5/25 -W1/0.5p,black,dashed -A100/0/1 -G220,220,220 -Da
        gmt colorbar -C -DjMR+o-0.5i/0i+m -Bxa50f -By+l"(mGal)" -S -I

    gmt subplot end
gmt end show