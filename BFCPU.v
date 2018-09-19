 module main;
    wire [15:0] PC;
    wire [3:0] INST;
    wire [14:0] DP;
    wire [7:0] WDATA;
    wire [7:0] RDATA;  
    wire RF;
    wire WF;
    reg clk = 0;
    
    //Instruction decode
    wire SGN = INST[0]; 
    wire INP = INST[3:0]==4'b0101; 
    wire OUTP = INST[3:0]==4'b0100; 
    wire DOP = INST[3:1]==3'b001; 
    wire DPOP = INST[3:1]==3'b000;  
    wire RD = INST[3:0]==4'b1100;
    wire WD = INST[3:0]==4'b1101;
    wire LD = INST[3:0]==4'b1011;

    
    OPC OPC1(IZ,PC,RF,WF,INST,clk);
    DPC DPC1(DPOP,SGN,clk,DP);
    DC DC1(DOP,INP,OUTP,SGN,RDATA,WDATA,LD,IZ,clk);
    DMEMC DMEMC1(RD,WD,WDATA,DP,RF,WF,RDATA,clk);

    initial begin
        $dumpfile("outp/my_dumpfile.vcd"); 
        $dumpvars(0,main);
        //#200 $finish;
    end

    always #1 clk = !clk;

    always @(posedge clk)
    begin 
        //$display(" INST %b DP %d WDATA %0d PC=%d",INST,DP,WDATA,PC);
    
        //$display(PC);
        //check if last inst from mem is fetched
        if((^INST === 1'bx)) begin
            
            $display("\ntime is %d",$time);
            $finish;
        end
    end
endmodule




module OPC(IZ,PC,RF,WF,INST,clk);
    input clk;
    input IZ,RF,WF;
    output reg [15:0] PC;
    output reg [3:0] INST;
    
    
    reg [7:0] bracketcount;
    reg [2:0] IMEM [65536-1:0];
    reg [2:0] NEXTOP;  //next true inst from program
    reg [3:0] NEXTSTATE; //next state

    //decoding of current inst
    parameter 
    INP     =4'b0101,
    OUTP    =4'b0100,
    DI      =4'b0010,
    DD      =4'b0011,
    DPI     =4'b0000,
    DPD     =4'b0001,
    BZ      =4'b0110,
    BNZ     =4'b0111,
    RD      =4'b1100,
    WD      =4'b1101,
    LD      =4'b1011,
    WIP     =4'b1001,
    RIP     =4'b1000,
    SF      =4'b1110,
    SB      =4'b1111,
    NOP     =4'b1010;
    
    parameter
    NINP    =3'b101,
    NOUTP   =3'b100,
    NDI     =4'b010,
    NDD     =4'b011,
    NDPI    =4'b000,
    NDPD    =4'b001,
    NBZ     =4'b110,
    NBNZ     =4'b111;
    
    
    integer PCDELTA = 0;
    integer bracketdelta = 0;
    
    initial begin
        $readmemb("storage_files/program.bin", IMEM);
        PC = 1;
        NEXTOP = IMEM[1];
        INST = { 1'b0,IMEM[0]};
    end
    
    
    
    
    
    always @(NEXTOP,INST,IZ,RF,WF,clk) begin
        case (INST)
            INP:begin
                    case(NEXTOP)
                        NDPI:begin 
                                NEXTSTATE = WD;
                                PCDELTA = 0;
                                end
                        NDPD: begin 
                                NEXTSTATE = WD;
                                PCDELTA = 0;
                                end
                        BZ: begin
                                NEXTSTATE = WD;
                                PCDELTA = 0;
                                end
                        BNZ: begin
                                NEXTSTATE = WD;
                                PCDELTA = 0;
                                end
                        default:begin 
                                NEXTSTATE = { 1'b0,NEXTOP};
                                PCDELTA = 1;
                                end
                    endcase
                end
            OUTP:begin
                    case(NEXTOP)
                        NDPI:begin 
                                NEXTSTATE = WD;
                                PCDELTA = 0;
                                end
                        NDPD: begin 
                                NEXTSTATE = WD;
                                PCDELTA = 0;
                                end
                        BZ: begin
                                NEXTSTATE = WD;
                                PCDELTA = 0;
                                end
                        BNZ: begin
                                NEXTSTATE = WD;
                                PCDELTA = 0;
                                end
                        default:begin 
                                NEXTSTATE = { 1'b0,NEXTOP};
                                PCDELTA = 1;
                                end
                    endcase
                end 
            DI:begin
                    case(NEXTOP)
                        NDPI:begin 
                            NEXTSTATE = WD;
                            PCDELTA = 0;
                            end
                        NDPD:begin 
                            NEXTSTATE = WD;
                            PCDELTA = 0;
                            end
                        BZ: begin
                                NEXTSTATE = WD;
                                PCDELTA = 0;
                                end
                        BNZ: begin
                                NEXTSTATE = WD;
                                PCDELTA = 0;
                                end
                        default:begin 
                            NEXTSTATE = { 1'b0,NEXTOP};
                            PCDELTA = 1;
                            end
                    endcase
                end 
            DD:begin
                    case(NEXTOP)
                        NDPI:begin 
                            NEXTSTATE = WD;
                            PCDELTA = 0;
                            end
                        NDPD:begin 
                            NEXTSTATE = WD;
                            PCDELTA = 0;
                            end
                        BZ: begin
                                NEXTSTATE = WD;
                                PCDELTA = 0;
                                end
                        BNZ: begin
                                NEXTSTATE = WD;
                                PCDELTA = 0;
                                end
                        default:begin 
                            NEXTSTATE = { 1'b0,NEXTOP};
                            PCDELTA = 1;
                            end
                    endcase
                end 
            DPI:begin
                    case(NEXTOP)
                        NDPI:begin 
                                NEXTSTATE = { 1'b0,NEXTOP};
                                PCDELTA = 1;
                            end
                        NDPD:begin 
                                NEXTSTATE = { 1'b0,NEXTOP};
                                PCDELTA = 1;
                            end
                        NINP:begin 
                                NEXTSTATE = { 1'b0,NEXTOP};
                                PCDELTA = 1;
                            end
                        default:begin 
                                NEXTSTATE = RD;
                                PCDELTA = 0;
                            end
                    endcase
                end
            DPD:begin
                    case(NEXTOP)
                        NDPI:begin 
                                NEXTSTATE = { 1'b0,NEXTOP};
                                PCDELTA = 1;
                            end
                        NDPD:begin 
                                NEXTSTATE = { 1'b0,NEXTOP};
                                PCDELTA = 1;
                            end
                        NINP:begin 
                                NEXTSTATE = { 1'b0,NEXTOP};
                                PCDELTA = 1;
                            end
                        default:begin 
                                NEXTSTATE = RD;
                                PCDELTA = 0;
                            end
                    endcase
                end
            RD:begin
                    //$display("reading");
                    NEXTSTATE = RIP;
                    PCDELTA = 0;
                end
            WD:begin
                    //$display("writing");
                    NEXTSTATE = WIP;
                    PCDELTA = 0;
                end
            LD:begin
                    //$display("Read finished");
                    NEXTSTATE = { 1'b0,NEXTOP};
                    PCDELTA = 1;
                end
            WIP:begin
                    if(WF) begin
                        //$display("Write finished");
                        NEXTSTATE = { 1'b0,NEXTOP};
                        PCDELTA = 1;
                    end
                    else begin
                        NEXTSTATE = WIP;
                        PCDELTA = 0;
                    end
                end
            RIP:begin
                    if(RF) begin
                        //$display("Read finished");
                        NEXTSTATE = LD;
                        PCDELTA = 0;
                    end
                    else begin
                        NEXTSTATE = RIP;
                        PCDELTA = 0;
                    end
                end
            BZ:begin
                    if(IZ) begin
                        NEXTSTATE = SF;
                        bracketcount=0;
                        PCDELTA = 0;
                    end
                    else begin
                        NEXTSTATE = { 1'b0,NEXTOP};
                        PCDELTA = 1;
                    end
                end
            BNZ:begin
                    if(!IZ) begin
                        bracketcount =0;
                        NEXTSTATE = SB;
                        PCDELTA = -2;
                    end
                    else begin
                        NEXTSTATE = { 1'b0,NEXTOP};
                        PCDELTA = 1;
                    end
                end
            SF:begin
                    //$display("NEXTOP =%b PC=%d",NEXTOP,PC);
                    if( NEXTOP == BNZ && bracketcount==0) begin
                        //$display("found");
                        NEXTSTATE = NOP;
                        PCDELTA = 1;
                    end else begin
                        if(NEXTOP == BZ)
                            bracketdelta = 1;
                        if(NEXTOP == BNZ)
                            bracketdelta = -1;    
                        NEXTSTATE = SF;
                        PCDELTA = 1;
                    end
                end
            SB:begin
                    if(NEXTOP == BZ && bracketcount==0) begin
                        PCDELTA = 1;
                        NEXTSTATE = NOP;
                    end
                    else begin
                        //$display("NEXTOP =%b PC=%d",NEXTOP,PC);
                        if(NEXTOP == BNZ)
                            bracketdelta = 1;
                        if(NEXTOP == BZ)
                            bracketdelta = -1;   
                        NEXTSTATE = SB;
                        PCDELTA = -1;
                    end
                end
            NOP:begin
                    NEXTSTATE = { 1'b0,NEXTOP};
                    PCDELTA = 1;
                    
                end
            default: begin
                        //$display(INST);
                        //$display("something went wrong");
                        //$finish;
                        NEXTOP = NOP;
                    end
        endcase
            
    
    end
    
    
    always @(posedge clk) begin
        
        PC <= PC + PCDELTA;
        INST <= NEXTSTATE;
        if(PCDELTA != 0) begin
            NEXTOP <= IMEM[PC+PCDELTA];
        end
        
        if(bracketdelta !=0) begin
            bracketcount <=bracketcount+ bracketdelta;
            bracketdelta <=0;
        end
        
        //$display("bracketcount",bracketcount);
        /*if(NEXTSTATE == WD)
            $display("Writing)");
        if(NEXTSTATE == RD)
            $display("Reading");
        */
    end
endmodule

module DPC(DPOP,SGN,clk,DP);
    input DPOP, SGN,clk;
    output reg [14:0] DP;
    
    initial begin
        DP <= 0;
    end
    
    always @(posedge clk) 
    begin
        if(DPOP)
            DP <= (SGN) ? DP - 1: DP+1;
    end
endmodule

module DC(DOP,INP,OUTP,SGN,RDATA,WDATA,LD,IZ,clk);
    input DOP,OUTP,INP,SGN,LD,clk;
    input [7:0] RDATA;
    output reg [7:0] WDATA;
    output wire IZ;
    
    integer COUNT = 0;
    
    
    integer INPMEM;
    integer OUTC;
    integer OUTD;
    assign IZ = WDATA == 0;
    
    initial begin
        INPMEM = $fopen("storage_files/programinput" ,"r");
        WDATA = 0;
    end
    
    always @(posedge clk) begin
        
        if(DOP)
            WDATA <= (SGN) ? WDATA-1 : WDATA +1;
        else if(INP)
            WDATA <= $fgetc(INPMEM);
        else if(LD)
            WDATA <= RDATA;
        else if(OUTP) begin
            //$fwrite(OUTC,"%c",WDATA);
            //$fwrite(OUTD,"%d",WDATA);
            //$display("%c",WDATA);
            $write("%c", WDATA);
            
        end
    end
    
    
    
endmodule

 module DMEMC(RD,WD,WDATA,DP,RF,WF,RDATA,clk);
    input RD,WD,clk;
    input [14:0] DP;
    input [7:0] WDATA;
    output reg RF,WF;
    output reg [7:0] RDATA;
    
    reg [7:0] DMEM[2**15-1:0];
    
    initial begin
        $readmemh("storage_files/DMEM.txt", DMEM);
        RF <=0;
        WF <=0;
    end
    always @(posedge RD) begin
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
