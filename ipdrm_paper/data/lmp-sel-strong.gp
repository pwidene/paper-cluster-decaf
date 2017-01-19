set terminal epslatex size 8.7cm, 4.3cm

set style line 1 lc rgb 'black' lt 1 lw 1 pt 2 ps 1.2
set style line 2 lt 1 lw 1 pt 3 ps 1
set style line 3 lc rgb 'black' lt 1 lw 1 pt 7 ps 1.2
set output "`echo $OUT`"
#set format x "$%g$"
set format xy '\scriptsize{%g}'
#set tics font ", 8"
set label 'Select' at graph 0.45, graph 0.9
#set xlabel '\scriptsize{Process size}'
#set key font ","
set key spacing 0.8
set key samplen 1.2
set key at graph 0.9, graph 0.65
set xtics nomirror

#set key at 0,0 bot center
#set key above
plot  [8:85] "data/lmp-sel-strong.dat" title "whole step" with linespoints ls 1, \
"data/lmp-sel-strong-xfer.dat" title "data transfer" with linespoints ls 3