gmt begin GOCED1-D6 png E600
    set D1=D:\matlabprogram\mohoinvers\ParkerMoho\data\goceD1.txt
    set D2=D:\matlabprogram\mohoinvers\ParkerMoho\data\goceD2.txt
    set D3=D:\matlabprogram\mohoinvers\ParkerMoho\data\goceD3.txt
    set D4=D:\matlabprogram\mohoinvers\ParkerMoho\data\goceD4.txt
    set D5=D:\matlabprogram\mohoinvers\ParkerMoho\data\goceD5.txt
    set D6=D:\matlabprogram\mohoinvers\ParkerMoho\data\goceD6.txt
    set gD1=gD1.grd
    set gD2=gD2.grd
    set gD3=gD3.grd
    set gD4=gD4.grd
    set gD5=gD5.grd
    set gD6=gD6.grd
    set cpt=cpt.cpt
    set seab=line\seabasinline.txt
    set fault=line\fault.txt
    set rig1=line\ridge1.txt
    set rig2=line\ridge2.txt
    set sd=line\subduction.txt
    gmt xyz2grd %D1% -G%gD1% -I10m -R105/125/5/25
    gmt xyz2grd %D2% -G%gD2% -I10m -R105/125/5/25
    gmt xyz2grd %D3% -G%gD3% -I10m -R105/125/5/25
    gmt xyz2grd %D4% -G%gD4% -I10m -R105/125/5/25
    gmt xyz2grd %D5% -G%gD5% -I10m -R105/125/5/25
    gmt xyz2grd %D6% -G%gD6% -I10m -R105/125/5/25
    gmt set FONT 24p,Helvetica,black
    gmt set FONT_TAG 32p,Helvetica,black
    gmt makecpt -T-15/15/0.1 -Cwaveletdetail -Z

    gmt subplot begin 3x2 -Fs6i/8i -BWSen -M+0.3i/-0.7i -SRl -SCb -A+jTL+o0.1i/1i
        gmt subplot set 0 -A(D1)
        gmt basemap -Ba5f -R105/125/5/25 -JM? 
        gmt grdimage %gD1% -C
        gmt plot %seab% -W1.5p,white,dashed
        gmt plot %fault% -W2p,black,dashed
        gmt plot %rig1% -W2p,yellow,dashed
        gmt plot %rig2% -W2p,yellow,dashed
        gmt plot %sd% -W2.5p,139/0/0
        gmt coast -R105/125/5/25 -W1/0.5p,black,dashed -A100/0/1 -Da

        gmt subplot set 1 -A(D2)
        gmt basemap -Ba5f  -R105/125/5/25 -JM?
        gmt grdimage %gD2% -C
        gmt plot %seab% -W1.5p,white,dashed
        gmt plot %fault% -W2p,black,dashed
        gmt plot %rig1% -W2p,yellow,dashed
        gmt plot %rig2% -W2p,yellow,dashed
        gmt plot %sd% -W2.5p,139/0/0
        gmt coast -R105/125/5/25 -W1/0.5p,black,dashed -A100/0/1 -Da

        gmt subplot set 2 -A(D3)
        gmt basemap -Ba5f  -R105/125/5/25 -JM?
        gmt grdimage %gD3% -C
        gmt plot %seab% -W1.5p,white,dashed
        gmt plot %fault% -W2p,black,dashed
        gmt plot %rig1% -W2p,yellow,dashed
        gmt plot %rig2% -W2p,yellow,dashed
        gmt plot %sd% -W2.5p,139/0/0
        gmt coast -R105/125/5/25 -W1/0.5p,black,dashed -A100/0/1 -Da

        gmt subplot set 3 -A(D4)
        gmt basemap -Ba5f -R105/125/5/25 -JM?
        gmt grdimage %gD4% -C
        gmt plot %seab% -W1.5p,white,dashed
        gmt plot %fault% -W2p,black,dashed
        gmt plot %rig1% -W2p,yellow,dashed
        gmt plot %rig2% -W2p,yellow,dashed
        gmt plot %sd% -W2.5p,139/0/0
        gmt coast -R105/125/5/25 -W1/0.5p,black,dashed -A100/0/1 -Da

        gmt subplot set 4 -A(D5)
        gmt basemap -Ba5f -R105/125/5/25 -JM?
        gmt grdimage %gD5% -C
        gmt plot %seab% -W1.5p,white,dashed
        gmt plot %fault% -W2p,black,dashed
        gmt plot %rig1% -W2p,yellow,dashed
        gmt plot %rig2% -W2p,yellow,dashed
        gmt plot %sd% -W2.5p,139/0/0
        gmt coast -R105/125/5/25 -W1/0.5p,black,dashed -A100/0/1 -Da
        
        gmt subplot set 5 -A(D6)
        gmt basemap -Ba5f -R105/125/5/25 -JM?
        gmt grdimage %gD6% -C
        gmt plot %seab% -W1.5p,white,dashed
        gmt plot %fault% -W2p,black,dashed
        gmt plot %rig1% -W2p,yellow,dashed
        gmt plot %rig2% -W2p,yellow,dashed
        gmt plot %sd% -W2.5p,139/0/0
        gmt coast -R105/125/5/25 -W1/0.5p,black,dashed -A100/0/1 -Da
        gmt colorbar -C -DjBC+w12i/0.2i+o-3.5i/-0.7i+m -Bxaf -By+l"(E)" -S -I 
    gmt subplot end
   
gmt end show