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
set boxwidth 1 relative
plot "data1.txt" using 2:xtic(1) title "测试样本数量及其成功率" with histograms, \
'' using ($0+0.25):(column(2)/2):2 with labels offset char 1,0 notitle, \
'' using 0:2:3 with labels offset char 0,1 notitle