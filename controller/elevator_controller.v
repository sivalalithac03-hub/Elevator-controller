module elevator_controller (
    input clk,
    input reset,
    input [1:0] floor_request,
    output reg [1:0] current_floor
);

always @(posedge clk or posedge reset)
begin
    if (reset)
        current_floor <= 2'b00;

    else
    begin
        if (current_floor < floor_request)
            current_floor <= current_floor + 1'b1;

        else if (current_floor > floor_request)
            current_floor <= current_floor - 1'b1;

        else
            current_floor <= current_floor;
    end
end

endmodule