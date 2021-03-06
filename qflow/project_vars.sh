#!/bin/tcsh -f
#------------------------------------------------------------
# project variables for project /home/david/Documents/BFCPU/Brainfuck_CPU/qflow
#------------------------------------------------------------

# Synthesis command options:
# -------------------------------------------
# set hard_macros =
# set yosys_options =
# set yosys_script =
# set yosys_debug =
# set abc_script =
# set nobuffers =
# set nofanout =
 set fanout_options = "-l 100 -c 20"

# Placement command options:
# -------------------------------------------
# set initial_density =
# set graywolf_options =
set addspacers_options = "-stripe 5.0 150.0 PG"

# Router command options:
# -------------------------------------------
set route_show = 1
set route_layers = 3
# set via_use =
# set via_stacks = "1"
# set qrouter_options =

# Minimum period of the clock use "--period value" (value in ps)
set vesta_options = "--long"

#------------------------------------------------------------

