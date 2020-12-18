gmt begin drhom_c_105_125_5_25 png E600
    set input1=D:\matlabprogram\crust1.0
    set output1=grd1.grd
    set seab=line\seabasinline.txt
    set fault=line\fault.txt
    set rig1=line\ridge1.txt
    set rig2=line\ridge2.txt
    set sd=line\subduction.txt
    set PN=line\pointname\pointname.txt
    gmt xyz2grd %input1% -R105/125/5/25 -I1d -G%output1%  
    gmt set FONT 18p,Helvetica,black
    gmt grd2cpt %output1% -Crainbow -Z
    gmt basemap -R105/125/5/25 -JM8i -BWSen -Ba5f
    gmt grdimage %output1% -C -I
    gmt plot %seab% -W1.5p,white,dashed
    gmt plot %fault% -W2p,black,dashed
    gmt plot %rig1% -W2p,yellow,dashed
    gmt plot %rig2% -W2p,yellow,dashed
    gmt plot %sd% -W2.5p,139/0/0
    gmt text %PN% -F+f+a

    gmt coast -R105/125/5/25 -W1/1.0p,black,dashed -A100/0/1 -Da
    gmt colorbar -C -DjMR+o-0.7i/0i+m -Bx0.05f -By+l"g/cm@+3@+" -S -I

gmt end show
