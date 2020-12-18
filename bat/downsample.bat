gmt begin SCS png E600
    set input=D:\Sea_data_set\Topomodel\SIOtopo_20.1.nc
    set out=grd.grd
    gmt grdsample %input% -R95/135/-5/35 -I5m -G%out%

    gmt grdimage %out%

    grd2xyz %out% -R95/135/-5/35 >SIOtopo5m_95_135_w5_35.txt
    

gmt end show