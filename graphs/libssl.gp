#
# File: libssl.gp
# Desc: Obfuscated (different types) vs unobfuscated categorized ROP gadget 
#       count gnuplot graph file for all coreutils binaries.
#
# Author: Aravindhan Dhanasekaran <adhanas@ncsu.edu>
#

clear
reset

# Set final output termianl/file settings
set terminal postscript eps enhanced color solid font 'Helvetica,10'
set output 'libssl.eps'

# Set graph title and where to place the keys
set title 'libssl - Categorized ROP Gadget Count for Unobfuscated and Obfuscated libssl library'
set key left top

# Set the graph attributes. Horizontal grid, axes labels and position
set grid y
set ylabel 'Number of Unique Gadgets'
set xlabel 'Gadget Categories'
set xtics rotate by -45

# Set histogram style: histogram, gap of 1 b/w bars and fill using solid colors
set style data histogram
set style histogram clustered gap 1
set style fill solid 1.00 noborder

# Set the histogram bar colors
set style line 2 lc rgb 'green'
set style line 3 lc rgb 'red' 

# Plot the graph with the above used line styles
plot for [i=2:3] 'libssl.gp.dat' using i:xtic(1) ti col ls i

reset

