`timescale 1ns/1ps

module elevator_controller_tb;

reg clk;
reg reset;
reg [1:0] floor_request;

wire [1:0] current_floor;

elevator_controller uut (
    .clk(clk),
    .reset(reset),
    .floor_request(floor_request),
    .current_floor(current_floor)
);

// Clock generation
always #5 clk = ~clk;

initial
begin

    clk = 0;
    reset = 1;
    floor_request = 2'b00;

    #10;
    reset = 0;

    // Request floor 3
    floor_request = 2'b11;
    #40;

    // Request floor 1
    floor_request = 2'b01;
    #30;

    // Request floor 2
    floor_request = 2'b10;
    #20;

    // Request floor 0
    floor_request = 2'b00;
    #30;

    $finish;

end

initial
begin
    $monitor("Time=%0t | Requested Floor=%d | Current Floor=%d",
             $time, floor_request, current_floor);
end

endmodule