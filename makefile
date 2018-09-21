all : inp cpy bcompiler iverilogcompiler execute
.PHONY : all

c: inp c2bf bcompiler iverilogcompiler execute
.PHONY : c

inp: bin/ascii2hex.py storage_files/programinput
	python3 bin/ascii2hex.py -i storage_files/programinput -o outp/programinput.h

cpy: programs/program.b
	cp programs/program.b outp/program.b

c2bf: c2bf-master/c2bf.native programs/program.c 
	c2bf-master/c2bf.native -o outp/program.b programs/program.c

bcompiler : bin/compiler.py outp/program.b
	python3 bin/compiler.py -i outp/program.b  -o storage_files/program.bin

iverilogcompiler: storage_files/program.bin BFCPU_verilog/BFCPU.v BFCPU_verilog/BFCPU_TB.v BFCPU_verilog/DMEM.v BFCPU_verilog/IMEM.v 
	iverilog BFCPU_verilog/BFCPU.v BFCPU_verilog/BFCPU_TB.v BFCPU_verilog/DMEM.v BFCPU_verilog/IMEM.v -o outp/cpu.out
	
execute: outp/cpu.out
	vvp outp/cpu.out
	
	
.PHONY : clean
clean: 
	rm program.bin cpu.out

