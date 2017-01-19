call "data/common.gnuplot" "3.2in,1.6in"

set output "`echo $OUT`"

set key default
set key spacing 1.5
set key samplen 4 left
set key at 15,180

set xlabel '\#core'
set ylabel 'builds / hour'
#set yrange [0:200]
set xrange [1:80]
plot 'data/results/GmakeLoad.dat' index 0 title '\make' with linespoints ls 1, \
	 'data/results/GmakeFakerootLoad.dat' index 0 title '\fakeroot' with linespoints ls 2, \
	 'data/results/GmakeFakerootLoad-GlobalBitmap.dat' index 0 title '\fakeroot global bitmap' with linespoints ls 3, \
