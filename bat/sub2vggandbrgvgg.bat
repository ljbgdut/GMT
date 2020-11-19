gmt begin vggandbrgvgg png E600
    set input1=D:\matlabprogram\mohoinvers\vggv30.1_105_125_5_25.txt
    set grd1=vgg.grd
    set input2=D:\matlabprogram\mohoinvers\ParkerMoho\bugrvgg.txt
    set grd2=bugrvgg.grd
    set seab=line\seabasinline.txt
    set fault=line\fault.txt
    set rig1=line\ridge1.txt
    set rig2=line\ridge2.txt
    set sd=line\subduction.txt
    gmt xyz2grd %input1% -R105:00:30/124:59:30/5:00:30/24:59:30 -I1m -G%grd1%
    gmt xyz2grd %input2% -R105:00:30/124:59:30/5:00:30/24:59:30 -I1m -G%grd2%
    gmt set FONT 12p,Helvetica,black
    gmt set FONT_TITLE 24p,Helvetica,black 
    gmt set FONT_TAG 32p,Helvetica,black
    gmt subplot begin 1x2 -Fs8i/6i -BWSen -A(a)+jTL+o1.2i/0.1i -M-0.55i
        gmt subplot set 0 
        gmt basemap -Ba5f -BWSen+t"Vgg v30.1" -R105/125/5/25 -JM?
        gmt grdimage %grd1% -Cvgg301.cpt
        gmt plot %seab% -W1.5p,59,dashed
        gmt plot %fault% -W2p,black,dashed
        gmt plot %rig1% -W2p,25/25/112,dashed
        gmt plot %rig2% -W2p,25/25/112,dashed
        gmt plot %sd% -W2.5p,139/0/0
        gmt coast -R105/125/5/25 -W1/0.5p,black,dashed -A100/0/1 -G220,220,220 -Da
        gmt colorbar -Cvgg301.cpt -DjMR+o-0.5i/0i+m -Bxaf -By+l"(E)" -S -I

        gmt subplot set 1 
        gmt basemap -Ba5f -BWSen+t"Terrain corrected vgg" -R105/125/5/25 -JM?
        gmt grdimage %grd2% -Cvgg301.cpt
        gmt plot %seab% -W1.5p,59,dashed
        gmt plot %fault% -W2p,black,dashed
        gmt plot %rig1% -W2p,25/25/112,dashed
        gmt plot %rig2% -W2p,25/25/112,dashed
        gmt plot %sd% -W2.5p,139/0/0
        gmt coast -R105/125/5/25 -W1/0.5p,black,dashed -A100/0/1 -G220,220,220 -Da
        gmt colorbar -Cvgg301.cpt -DjMR+o-0.5i/0i+m -Bxaf -By+l"(E)" -S -I

    gmt subplot end

gmt end show