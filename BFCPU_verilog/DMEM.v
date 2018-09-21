  module DMEMC(RD,WD,WDATA,DP,RF,WF,RDATA,clk);
    input RD,WD,clk;
    input wire [14:0] DP;
    input [7:0] WDATA;
    output reg RF,WF;
    output reg [7:0] RDATA;
    
    reg [7:0] DMEM[2**15-1:0];
    
    initial begin
        $readmemh("/home/david/Documents/BFCPU/Brainfuck_CPU/storage_files/DMEM.txt", DMEM);
        RF <=0;
        WF <=0;
        RDATA <=0;
    end
    always @(posedge RD) begin
        //$display("%d",DP);
        RDATA <= #2 DMEM[DP];
        RF <= #4 1;
        RF <= #6 0;
    end
    
    always @(posedge WD) begin
        DMEM[DP] <= #2 WDATA;
        WF <= #4 1;
        WF <= #6 0;
    end
endmodule

