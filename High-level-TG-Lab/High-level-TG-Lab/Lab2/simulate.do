vlib work ///remove this and to start from vcom or manually use the editor in Ubuntu.

#Include files and compile them
vcom "pack_mips.vhd"
vcom "my_package.vhd"
vcom "alu.vhd"
vcom "testbench.vhd"

# Start simulation
vsim work.testbench 

# Draw waves 

# Run simulation
run 3000000 ns

quit
