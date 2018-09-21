#!/bin/tcsh -f
#-------------------------------------------
# qflow exec script for project /home/david/Documents/BFCPU/Brainfuck_CPU/qflow
#-------------------------------------------

# /usr/local/share/qflow/scripts/synthesize.sh /home/david/Documents/BFCPU/Brainfuck_CPU/qflow BFCPU /home/david/Documents/BFCPU/Brainfuck_CPU/qflow/source/BFCPU.v || exit 1
# /usr/local/share/qflow/scripts/placement.sh -d /home/david/Documents/BFCPU/Brainfuck_CPU/qflow BFCPU || exit 1
# /usr/local/share/qflow/scripts/vesta.sh /home/david/Documents/BFCPU/Brainfuck_CPU/qflow BFCPU || exit 1
/usr/local/share/qflow/scripts/router.sh /home/david/Documents/BFCPU/Brainfuck_CPU/qflow BFCPU || exit 1
# /usr/local/share/qflow/scripts/vesta.sh -d /home/david/Documents/BFCPU/Brainfuck_CPU/qflow BFCPU || exit 1
# /usr/local/share/qflow/scripts/cleanup.sh /home/david/Documents/BFCPU/Brainfuck_CPU/qflow BFCPU || exit 1
# /usr/local/share/qflow/scripts/display.sh /home/david/Documents/BFCPU/Brainfuck_CPU/qflow BFCPU || exit 1
