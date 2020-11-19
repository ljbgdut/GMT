gmt begin linear
    set topo=shipgrd.txt
    set vgg=DTU10.txt
    set grdvgg=SIOV29.1.grd
    set grdtopo=ship.grd
    
    gmt surface %vgg% -G%grdvgg% -R109:00:30/118:59:30/6:00:30/19:59:30 -I1m
    gmt surface %topo% -G%grdtopo% -R109:00:30/118:59:30/6:00:30/19:59:30 -I1m

    set outfile=spectrum.txt
    gmt gravfft %grdtopo% %grdvgg% -Iwk -G%outfile% -fg -Na+m+h
    REM gmt gravfft %grdtopo% %grdvgg% -Iwtk -T11000/2825/3299/1020 -Z15500 -Fv -G%outfile% -fg -Na+m
    set p=spectrum.txt -i0,1
    gmt basemap -JX10c/5c -R0/250/0/1  -BWSen -Bxaf -Byaf
    gmt plot %p% -W2p,black,.....
gmt end
