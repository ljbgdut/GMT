gmt begin SCS png E600
    set input=D:\Sea_data_set\Topomodel\SIOtopo_20.1.nc
    set out=ETOPO10_105_125_5_25.grd
    set seab=line\seabasinline.txt
    set fault=line\fault.txt
    set rig1=line\ridge1.txt
    set rig2=line\ridge2.txt
    set sd=line\subduction.txt
    set PN=line\pointname\pointname.txt
    gmt set FONT 14p,Helvetica,black

    gmt grd2cpt %input% -R105/125/5/25 -Cetopo1 -Z -D -E
    REM gmt makecpt -T0/35/1 -Crainbow -Z
    gmt basemap -BWSen -Ba5f -R105/125/5/25 -JM8i
    gmt grdimage %input% -R105/125/5/25
    gmt plot %seab% -W1.5p,white,dashed
    gmt plot %fault% -W2p,black,dashed
    gmt plot %rig1% -W2p,yellow,dashed
    gmt plot %rig2% -W2p,yellow,dashed
    gmt plot %sd% -W2.5p,139/0/0
    gmt text %PN% -F+f+a

    gmt coast -R105/125/5/25 -W1/1.0p,black,dashed -A100/0/1 -Da
    gmt colorbar -C -DjBC+w7.5i/0.1i+o0i/-0.5i+m -Bxa1000f -By+l"(m)" -S -I

gmt end show
