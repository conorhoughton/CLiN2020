
unset key
set size 0.35,0.7
set yrange [0.0:0.45]
set xrange [-0.5:3.5]
set xtics (0,1,2,3)

set xtics nomirror
set ytics nomirror
set border 3
set ytics (0,0.1,0.2,0.3,0.4)
set xtics outwards
set ytics outwards

plot "phrase.dat" us 1:2 pointtype 3

replot "average1.dat" us 1:2 w lines lt -1 lw 2
replot "average2.dat" us 1:2 w lines lt -1 lw 2
replot "average3.dat" us 1:2 w lines lt -1 lw 2
replot "average4.dat" us 1:2 w lines lt -1 lw 2



# Draw line for significance test
set arrow 1 from 0,0.39 to 2,0.39 nohead ls -1
set arrow 2 from 0,0.39 to 0,0.38 nohead ls -1
set arrow 3 from 2,0.39 to 2,0.38 nohead ls -1
set label '*' at 1,0.40 center

replot

# Draw line for significance test
set arrow 4 from 0,0.42 to 3,0.42 nohead ls -1
set arrow 5 from 0,0.42 to 0,0.41 nohead ls -1
set arrow 6 from 3,0.42 to 3,0.41 nohead ls -1
set label '*' at 1.5,0.43 center

replot

# Draw line for significance test
set arrow 7 from 1,0.36 to 3,0.36 nohead ls -1
set arrow 8 from 1,0.36 to 1,0.35 nohead ls -1
set arrow 9 from 3,0.36 to 3,0.35 nohead ls -1
set label '*' at 2,0.37 center



replot