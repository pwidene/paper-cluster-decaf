set terminal epslatex size 8.7cm, 4.3cm
#color colortext font ',8'
set style line 1 lc rgb 'black' lt 1 lw 1 pt 2 ps 1.2
set style line 2 lt 1 lw 1 pt 3 ps 4
set style line 3 lc rgb 'black' lt 1 lw 1 pt 7 ps 1.2
set output "`echo $OUT`"
set format xy '\scriptsize{$%g$}'
set label "Magnitude" at graph 0.4, graph 0.9
#set key samplen 2
#set key spacing 0.8
#set key at graph 0.9, graph 0.6
set xtics nomirror
unset key
plot  "data/lmp-mag-strong.dat" title "whole step" with linespoints ls 1, \
"data/lmp-mag-strong-xfer.dat" title "data transfer" with linespoints ls 3