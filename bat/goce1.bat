gmt begin tcvggSCS16km png E600
    set input=D:\matlabprogram\mohoinvers\tcgoce_ex10.txt -i0,1,2
    set out=grd.grd
    set seab=line\seabasinline.txt
    set fault=line\fault.txt
    set rig1=line\ridge1.txt
    set rig2=line\ridge2.txt
    set sd=line\subduction.txt
    set PN=line\pointname\pointname.txt
    gmt set FONT 12p,Helvetica,black 
    
    gmt xyz2grd %input% -R95/135/-5/35 -I10m -G%out%
    gmt grd2cpt %out% -R95/135/-5/35 -Crainbow -Z

    gmt basemap -BWSen -Ba5f -R95/135/-5/35 -JM24i
    gmt grdimage %out% -R95/135/-5/35
    gmt plot %seab% -W1.5p,white,dashed
    gmt plot %fault% -W2p,black,dashed
    gmt plot %rig1% -W2p,yellow,dashed
    gmt plot %rig2% -W2p,yellow,dashed
    gmt plot %sd% -W2.5p,139/0/0
    gmt text %PN% -F+f+a

    gmt coast -R95/135/-5/35 -W1/1.0p,black,dashed -A100/0/1 -Da
    gmt colorbar -C -DjBC+w7.5i/0.1i+o0i/-0.5i+m -Bx10f -By+l"(E)" -S -I

gmt end show
