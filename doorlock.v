module doorlock(

input [3:0] password,
output unlock

);

assign unlock = (password == 4'b1010);

endmodule