all : cpy bcompiler iverilogcompiler execute
.PHONY : all

c: c2bf bcompiler iverilogcompiler execute
.PHONY : c

cpy: programs/program.b
	cp programs/program.b outp/program.b

c2bf: c2bf-master/c2bf.native programs/program.c 
	c2bf-master/c2bf.native -o outp/program.b programs/program.c

bcompiler : bin/compiler.py outp/program.b
	python3 bin/compiler.py -i outp/program.b  -o storage_files/program.bin

iverilogcompiler: storage_files/program.bin BFCPU.v    
	iverilog BFCPU.v -o outp/cpu.out
	
execute: outp/cpu.out
	vvp outp/cpu.out
	
	
.PHONY : clean
clean: 
	rm program.bin cpu.out

