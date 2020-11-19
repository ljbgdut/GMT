gmt begin linear
    set h=DTU10bathy.txt
    set g=DTU10.txt
    set grdg=grdg.grd
    set grdh=grdh.grd
    set outfile=spectrum.txt
    REM gmt xyz2grd %h% -G%grdh% -I1m -R115/119/13/17
    REM gmt xyz2grd %g% -G%grdg% -I1m -R115/119/13/17
    REM gmt xyz2grd %g% -G%grdg% -I10m -R103/120/2/23
    REM gmt surface %g% -G%grdg1% -I1m -R103/120/2/23
    gmt surface %h% -G%grdh% -I1m -R109/119/6/20
    gmt surface %g% -G%grdg% -I1m -R109/119/6/20
    gmt gravfft %grdh% %grdg% -Iwkc -G%outfile% -fg
    set p=spectrum.txt -i0,1
    gmt basemap -R0/5/0/5 -Jx1i -BWSEN -Bxaf -Byaf
    gmt plot %p%

gmt end showm
