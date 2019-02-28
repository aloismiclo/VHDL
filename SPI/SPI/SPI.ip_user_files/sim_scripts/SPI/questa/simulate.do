onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib SPI_opt

do {wave.do}

view wave
view structure
view signals

do {SPI.udo}

run -all

quit -force
