#
# LSD.TOS, March 2017 (DO NOT REMOVE THIS LINE)
#
# Timing constraints for the examples/lcd_audio project
#


#
# Do timing analysis for a very pessimistic case: slow and very hot FPGA.
#

set_operating_conditions 7_slow_1200mv_85c


#
# Identify the 50MHz clock and any other clocks obtained from it.
#

set_time_format -decimal_places 3 -unit ns
create_clock -name clock_50 -period 20.000 [ get_ports clock_50 ]
derive_pll_clocks
derive_clock_uncertainty


#
# "Slow" I/O pins (remove timing constraints for some FPGA pins)
#
# We don't care about setup and hold times concerning "slow" I/O pins.
#
# When input (to the FPGA) signals are used in sequential logic, it
# is IMPERATIVE that the first thing that is done to them inside the
# FPGA be to pass them through registers.
#
# For slow I/O signals, outputs do not need to pass through registers
# (but there is no harm if they do so).
#

set_false_path -from [ get_ports key[*] ] -to [ get_clocks * ]

set_false_path -from [ get_ports lcd_* ] -to [ get_clocks * ]
set_false_path -from [ get_clocks * ] -to [ get_ports lcd_* ]

set_false_path -from [ get_ports aud_* ] -to [ get_clocks * ]
set_false_path -from [ get_clocks * ] -to [ get_ports aud_* ]

set_false_path -from [ get_ports i2c_* ] -to [ get_clocks * ]
set_false_path -from [ get_clocks * ] -to [ get_ports i2c_* ]
