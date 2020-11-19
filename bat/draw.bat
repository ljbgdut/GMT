gmt begin terr png
    set input=D:\Sea_data_set\Topomodel\SIOtopo_20.1.nc
    
  
    gmt grd2xyz %input% -R103/120/2/23 >SIO_103_120_2_23.txt
gmt end show
