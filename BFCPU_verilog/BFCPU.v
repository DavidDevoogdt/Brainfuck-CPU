 module BFCPU(clk,IR,OW,INPD,OUTPD,reset,RD,WD,RDATA,WDATA,RF,WF,DP,PCDELTA,NEXTOP) ;
 
    
    input wire clk,WF,RF;
    input wire [15:0]  INPD;
    input wire [7:0] RDATA;
    input wire [2:0] NEXTOP;
    
    output reg reset;
    output wire [15:0] OUTPD;
    output wire [7:0] WDATA;
    output wire [14:0] DP;
    output wire IR,OW,RD,WD;
    output wire [15:0] PCDELTA;

 
    wire [15:0] PC;
    wire [3:0] INST;
    wire SGN;
    wire INP;
    wire OUTP;
    wire DOP;
    wire DPOP;
    wire LD;
    wire IZ;
    
    assign SGN = INST[0]; 
    assign INP = INST[3:0]==4'b0101; 
    assign OUTP = INST[3:0]==4'b0100; 
    assign DOP = INST[3:1]==3'b001; 
    assign DPOP = INST[3:1]==3'b000;  
    assign LD = INST[3:0]==4'b1011;
    assign RD = INST[3:0]==4'b1100;
    assign WD = INST[3:0]==4'b1101;

    
    OPC OPC1(IZ,RF,WF,INST,clk,PCDELTA,NEXTOP);
    DPC DPC1(DPOP,SGN,clk,DP);
    DC DC1(DOP,INP,OUTP,SGN,RDATA,WDATA,LD,IZ,clk,INPD,OUTPD,IR,OW);
    
    initial begin
        reset=0;
    end

    always @(posedge clk) begin 
        //$display("INST %b",INST);
        if((^INST === 1'bx)) begin
            reset <=1;
        end
    end
endmodule

module OPC(IZ,RF,WF,INST,clk,PCDELTA,NEXTOP);
    input clk;
    input IZ,RF,WF;
    
    output reg [3:0] INST;
    output reg [15:0] PCDELTA = 0;
    input wire [2:0] NEXTOP;
    
    
    reg [7:0] bracketcount;
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
    
    
    
    integer bracketdelta = 0;
    
    initial begin
        
        
        INST = DI;
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
                        //NEXTOP = NOP;
                    end
        endcase
            
    
    end
    
    
    always @(posedge clk) begin
        
        //$display("INST %0b NEXTSTATE %0b NEXTOP %0b",INST , NEXTSTATE, NEXTOP);
        
        INST <= NEXTSTATE;
        if(bracketdelta !=0) begin
            bracketcount <=bracketcount+ bracketdelta;
            bracketdelta <=0;
        end

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

module DC(DOP,INP,OUTP,SGN,RDATA,WDATA,LD,IZ,clk,INPD,OUTPD,IR,OW);
    input DOP,OUTP,INP,SGN,LD,clk;
    input [7:0] RDATA;
    output reg [7:0] WDATA;
    output wire IZ;
    output reg IR,OW;
    input [15:0] INPD;
    output reg [15:0] OUTPD;
    
    assign IZ = WDATA == 0;
    
    initial begin
        IR<=0;
        OW<=0;
        OUTPD<=0;
        WDATA = 0;
    end
    
    always @(posedge clk) begin
        
        if(DOP)
            WDATA <= (SGN) ? WDATA-1 : WDATA +1;
        else if(INP) begin
            WDATA <= INPD;
            IR <= !IR;
        end
        else if(LD)
            WDATA <= RDATA;
        else if(OUTP) begin
            //$display("%c",WDATA);
            OUTPD <= WDATA;
            OW <= !OW;
        end
    end
    
    
    
endmodule

