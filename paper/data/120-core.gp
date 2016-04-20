call "data/common.gnuplot" "3.2in,1.6in"

set output "`echo $OUT`"

set key default
set key spacing 1.5
set key samplen 4 left
set key at 15,180

set xlabel '\#core'
set ylabel 'builds / hour'
set xrange [1:120]
set xtics 15
plot \
    'data/results/120-core/gmake.dat' index 0 title 'make' with linespoints ls 1, \
    'data/results/120-core/fakeroot-shared-bitmap-threaded-mutex.dat' index 0 title '\sys' with linespoints ls 2, \
    'data/results/120-core/fakeroot-naive.dat' index 0 title '\fakeroot' with linespoints ls 3, \
    'data/results/120-core/fakeroot-multithreaded-server.dat' index 0 title '\fakeroot multithreaded server' with linespoints ls 4, \
    'data/results/120-core/fakeroot-shared-bitmap.dat' index 0 title '\fakeroot shared bitmap' with linespoints ls 5
