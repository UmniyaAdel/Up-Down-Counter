//1. module module name (ports list);
module Up__Down_Counter_Design (IN, Load, Up, Down, CLK, High, Counter, Low);

//2. ports declaration

input [4:0] IN;
input Load;
input Up;
input Down;
input CLK;

output High;
output Low;
output reg [4:0] Counter;

always @ (posedge CLK)

begin

if (Load)
begin
Counter<=IN;
end

else if(Up && ! High)
begin
Counter<=Counter+5'b00001;
end

else if(Up && !High && !Down)
begin
Counter<=Counter-5'b00001;
end

else

Counter<=Counter;

end

assign High= (Counter == 31);
assign Low= (Counter == 5'b0);

endmodule

