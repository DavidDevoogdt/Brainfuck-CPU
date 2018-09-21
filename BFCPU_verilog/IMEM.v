 module IMEMC(PCDELTA,NEXTOP,clk);
    input clk;
    input [15:0] PCDELTA;
    output reg [2:0] NEXTOP;
    
    reg [15:0] PC;
    reg [2:0] IMEM [2**15-1:0];
     
    wire [15:0] NEXTPC;
     
    assign NEXTPC = PC + PCDELTA;
 
    initial begin
        PC = 1;
        $readmemb("/home/david/Documents/BFCPU/Brainfuck_CPU/storage_files/program.bin", IMEM);
        NEXTOP = 3'b011;
    end
 
    always @(PC,PCDELTA) begin
        
    end
    always @(posedge clk) begin
        //$display("Pc %0d PCDELTA %0d NEXTOP %0b %b",PC,PCDELTA,NEXTOP,NEXTPC);
        PC <= NEXTPC;
        if(PCDELTA != 0) begin
            NEXTOP <= IMEM[NEXTPC];
        end
    end
    
endmodule
