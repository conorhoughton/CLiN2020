
unset key
set size 0.35,0.7
set yrange [0.0:0.8]
set xrange [-0.5:3.5]
set xtics (0,1,2,3)
set xtics nomirror
set ytics nomirror
set border 3
set ytics (0,0.2,0.4,0.6,0.8)
set xtics outwards
set ytics outwards


plot "syllables.dat" us 1:2 pointtype 3

replot "average1.dat" us 1:2 w lines lt -1 lw 2
replot "average2.dat" us 1:2 w lines lt -1 lw 2
replot "average3.dat" us 1:2 w lines lt -1 lw 2
replot "average4.dat" us 1:2 w lines lt -1 lw 2





replot