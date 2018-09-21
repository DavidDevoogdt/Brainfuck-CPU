module testbench ;
    reg clk=0;
    wire reset;
    wire IR,OW;
    wire [15:0] OUTPD;
    reg [15:0] INPD;
    wire WF,RF;
    wire RD,WD;
    wire [7:0] WDATA;
    wire [7:0] RDATA;
    wire [14:0] DP;
    wire [15:0] PCDELTA;
    wire [2:0] NEXTOP;
    
    
    integer INPMEM;
 
    initial begin
        $dumpfile("/home/david/Documents/BFCPU/Brainfuck_CPU/outp/my_dumpfile.vcd"); 
        $dumpvars(0,testbench);
        INPMEM = $fopen("/home/david/Documents/BFCPU/Brainfuck_CPU/storage_files/programinput" ,"r");
        
        //INPD = $fgetc(INPMEM);
        //#200 $finish;
    end
    
    always #1 clk = !clk;

    
    always @(posedge clk) begin
        //$display("NEXTOP: %b",NEXTOP);
    end
    
    
    BFCPU cpu1(clk,IR,OW,INPD,OUTPD,reset,RD,WD,RDATA,WDATA,RF,WF,DP,PCDELTA,NEXTOP);
    DMEMC DMEMC1(RD,WD,WDATA,DP,RF,WF,RDATA,clk);
    IMEMC IMEMC1(PCDELTA,NEXTOP,clk);
    
    
    always @(IR) begin
        //$display("RD");
        INPD <= $fgetc(INPMEM);
    end
        
    always @(OW) begin
        $write("%c",OUTPD);
    end
    always @(posedge reset)begin
        $display("finished in %t",$time);
        $finish;
    end
endmodule
