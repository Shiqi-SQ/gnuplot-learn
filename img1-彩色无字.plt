set encoding utf8
set title "跳跃函数功能测试"
set border linecolor "#9EB4CB"
set xtics textcolor "#000000" scale 0
set ytics textcolor "#000000" scale 0
set yrange [0:1600]
set key under
set bmargin at screen 0.13
set style data histograms
set style fill solid 1.0
set boxwidth 2 relative
set style line 1 lc "#FFFF3C"
set style line 2 lc "#0C6EC0"
set style line 3 lc "#16B354"
set style line 4 lc "#12B3FB"
set style line 5 lc "#781DB7"
plot \
"data1.txt" using ($0 == 0 ? $2 : 1/0):xtic(1) ls 1 title "测试样本数量及其成功率", \
"" using ($0 == 1 ? $2 : 1/0) ls 2 notitle, \
"" using ($0 == 2 ? $2 : 1/0) ls 3 notitle, \
"" using ($0 == 3 ? $2 : 1/0) ls 4 notitle, \
"" using ($0 == 4 ? $2 : 1/0) ls 5 notitle

