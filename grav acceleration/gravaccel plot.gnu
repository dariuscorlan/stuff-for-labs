#set term epslatex color
#set output "filename.tex" 
set terminal wxt size 1000,1000 enhanced font 'Verdana,10' persist
set style line 1 linecolor rgb '#0060ad' linetype 1 linewidth 2
set xlabel 'Time (s)'
set ylabel 'Position (m)'
set xrange [2.05: 2.3]
set yrange [0: 0.35]
set title '{/: Position as a function of time}' font '{,11}' 
set style line 2 lc rgb 'blue' pt 3
show title
f(x) = 4.9865* (x**2) - 19.943*x + 19.91
plot f(x) title 'x(t)' with lines linestyle 1,  'position-data.dat' 

