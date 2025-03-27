set encoding utf8
set title "2012-2014年，Android病毒感染人次对比"
set border linecolor "#FFFFFF"
set xtics textcolor "#000000" scale 0
set ytics textcolor "#000000" scale 0
set yrange [0:25000000]
set format y "%.0f"
set grid y
set key under maxcols 3
set bmargin at screen 0.16
set style line 1 lc "#92B155" lt 1 lw 2 pt 7 ps 1.2
set style line 2 lc "#C14145" lt 1 lw 2 pt 7 ps 1.2
set style line 3 lc "#4774B1" lt 1 lw 2 pt 7 ps 1.2

plot "data2.txt" using 2:xtic(1) title "2012年Android病毒感染人次" with linespoints ls 1, \
"" using ($0):2:2 with labels offset char 0,2 font ",7" notitle, \
""  using 3 title "2013年Android病毒感染人次" with linespoints ls 2, \
"" using ($0):3:3 with labels offset char 0,2 font ",7" notitle, \
""  using 4 title "2014年Android病毒感染人次" with linespoints ls 3, \
"" using ($0):4:4 with labels offset char 0,2 font ",7" notitle