gmt begin CRUSTandGEMMA png E600

    set input1=D:\matlabprogram\crust1.0\crustmoho_105_120_5_25.txt
    set input2=D:\GEMMA1.0\GEMMA1.0_105_125_5_25.txt
    set grd2=gemma.grd
    set grd1=crust.grd
    set seab=line\seabasinline.txt
    set fault=line\fault.txt
    set rig1=line\ridge1.txt
    set rig2=line\ridge2.txt
    set sd=line\subduction.txt
    set PN=line\pointname\pointname.txt
    gmt xyz2grd %input1% -I60m -R105/125/5/25 -G%grd1%
    gmt xyz2grd %input2% -I30m -R105/125/5/25 -G%grd2%
    gmt grd2cpt %grd2% -Crainbow -Z
    gmt set FONT 16p,Helvetica,black
    gmt set FONT_TAG 24p,Helvetica,black
    gmt subplot begin 1x2 -Fs8i/6i -BWSen -A(a)+jTL+o1.2i/0.1i -M-0.8i
        gmt subplot set 0 
        gmt basemap -Ba5f -R105/125/5/25 -JM?
        gmt grdmath %grd1% ABS = grdcrust.grd
        gmt grdimage grdcrust.grd -C
        gmt plot %seab% -W1.5p,white,dashed
        gmt plot %fault% -W2p,black,dashed
        gmt plot %rig1% -W2p,yellow,dashed
        gmt plot %rig2% -W2p,yellow,dashed
        gmt plot %sd% -W2.5p,139/0/0
        gmt text %PN% -F+f+a    
        gmt coast -R105/125/5/25 -W1/1p,black,dashed -A100/0/1 -Da

        gmt subplot set 1 
        gmt basemap -Ba5f -R105/125/5/25 -JM?
        gmt grdimage %grd2% -C
        gmt plot %seab% -W1.5p,white,dashed
        gmt plot %fault% -W2p,black,dashed
        gmt plot %rig1% -W2p,yellow,dashed
        gmt plot %rig2% -W2p,yellow,dashed
        gmt plot %sd% -W2.5p,139/0/0
        gmt text %PN% -F+f+a        
        gmt coast -R105/125/5/25 -W1/1p,black,dashed -A100/0/1  -Da
        gmt colorbar -C -DjBC+w6i/0.2i+o-3.5i/-0.6i+m -Bx5f -By+l"(km)" -S -I
    gmt subplot end

gmt end show