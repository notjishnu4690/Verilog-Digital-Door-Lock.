module tb;

reg [3:0] password;
wire unlock;

doorlock    uut(
.password(password),
.unlock (unlock)
);

initial begin 
$dumpfile("wave.vcd");
$dumpvars(0, tb);

password = 4'b0000;

#10 password = 4'b1010;
#10 password = 4'b1111;
#10 password = 4'b0101;

#10 $finish;

end

endmodule