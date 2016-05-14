set terminal latex size 8.3cm, 7cm
set output "eg3.tex"
set format xy "$%g$"
set title "This is another plot"
set xlabel "$x$ axis"
set ylabel "$y$ axis"
set key at 15,-7
plot x with lines, "eg3.dat" with linespoints