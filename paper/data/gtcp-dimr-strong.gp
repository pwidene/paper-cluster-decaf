set terminal epslatex size 8.7cm, 4.3cm

set style line 1 lc rgb 'black' lt 1 lw 1 pt 2 ps 1.4
set style line 2 lc rgb 'black' lt 1 lw 1 pt 3 ps 1.4
set style line 3 lc rgb 'black' lt 1 lw 1 pt 7 ps 1.4
set style line 4 lc rgb 'black' lt 1 lw 1 pt 10 ps 1.4
set output "`echo $OUT`"
#set format x "$%g$"
set format xy '\scriptsize{%g}'
#set tics font ", 8"
set label 'Dim-Reduce' at graph 0.41, graph 0.9
#set key font ","
set key spacing 0.8
set key samplen 1.2
set key at graph 0.92, graph 0.6
set xtics nomirror

#set key at 0,0 bot center
#set key above
plot  "data/gtcp-dimr1-strong.dat" title "dim-reduce 1" with linespoints ls 1, \
"data/gtcp-dimr2-strong.dat" title "dim-reduce 2" with linespoints ls 4