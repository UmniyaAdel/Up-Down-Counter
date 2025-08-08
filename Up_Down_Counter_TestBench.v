//1. module
module Up__Down_Counter_TestBench ();
//sig decl
reg [4:0] IN;
reg Load;
reg Up;
reg Down;
reg clk;
 
wire High;
wire Low;
wire [4:0] Counter;

//modue inst.
Up__Down_Counter_Design DUT(IN, Load, Up, Down, clk, High, Counter, Low);

// clk generation
initial begin
    clk = 0;
    forever begin
        #2 clk = ~clk;
    end
end

//stim generation
initial
begin
Load=1;
IN=0;
Up=0;
Down=0;
#5;

Load=0;
IN=5;
Up=1;
Down=0;
#5;

Load=1;
IN=4;
Up=0;
Down=1;
#5;

Load=0;
IN=2;
Up=0;
Down=1;
#5;

Load=1;
IN=31;
Up=0;
Down=1;
#7;

$stop;
end

endmodule


