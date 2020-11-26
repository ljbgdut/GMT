gmt begin crust_103_120_2_23 png E600
    set input1=D:\matlabprogram\crust1.0\uppercrust103_120_2_23.txt
    set input2=D:\matlabprogram\crust1.0\midcrust103_120_2_23.txt
    set input3=D:\matlabprogram\crust1.0\lowercrust103_120_2_23.txt
    set output1=grd1.grd
    set output2=grd2.grd
    set output3=grd3.grd
    gmt xyz2grd %input1% -R103/120/2/23 -I1d -G%output1%  
    gmt xyz2grd %input2% -R103/120/2/23 -I1d -G%output2% 
    gmt xyz2grd %input3% -R103/120/2/23 -I1d -G%output3% 
    gmt set FONT 12p,Helvetica,black
    gmt set FONT_TAG 16p,Helvetica,black
    gmt subplot begin 3x1 -Fs12i/4i -BWSEN -A(a)+jTL+o4.45i/0.05i -M-1.5i/0i
        gmt subplot set 0
        gmt grd2cpt %output1% -Crainbow -Z
        gmt basemap -R103/120/2/23 -JM? -BWSen -Ba5f
        gmt grdimage %output1% -C -I
        gmt coast -R103/120/2/23 -W1/0.5p,white,dashed -A100/0/1 -Da
        gmt colorbar -C -DjMR+o-0.5i/0i+m -Bx0.04f -By+l"(g/cm@+3@+)" -S -I

        gmt subplot set 1
        gmt grd2cpt %output2% -Crainbow -Z
        gmt basemap -R103/120/2/23 -JM? -BWSen -Ba5f
        gmt grdimage %output2% -C -I
        gmt coast -R103/120/2/23 -W1/0.5p,white,dashed -A100/0/1 -Da
        gmt colorbar -C -DjMR+o-0.5i/0i+m -Bx0.04f -By+l"(g/cm@+3@+)" -S -I

        gmt subplot set 2
        gmt grd2cpt %output3% -Crainbow -Z
        gmt basemap -R103/120/2/23 -JM? -BWSen -Ba5f
        gmt grdimage %output3% -C -I
        gmt coast -R103/120/2/23 -W1/0.5p,white,dashed -A100/0/1 -Da
        gmt colorbar -C -DjMR+o-0.5i/0i+m -Bx0.04f -By+l"(g/cm@+3@+)" -S -I

    gmt subplot end
gmt end show