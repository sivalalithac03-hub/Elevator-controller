# Elevator Controller Using Verilog

## Description

This project implements a simple elevator controller using Verilog HDL. The controller moves the elevator between four floors (0, 1, 2, and 3) based on the requested floor.

## Objective

The objective is to design and simulate a basic elevator control system using Verilog HDL and verify its operation with a testbench.

## Inputs

* `clk` – Clock signal
* `reset` – Reset signal
* `floor_request[1:0]` – Requested floor

## Output

* `current_floor[1:0]` – Current elevator floor

## Working

The elevator starts at floor 0. When a floor is requested, the controller moves the elevator one floor at a time toward the requested floor.

For example:

```text
Current Floor = 0
Requested Floor = 3

0 → 1 → 2 → 3
```

If the requested floor is lower than the current floor, the elevator moves downward.

```text
Current Floor = 3
Requested Floor = 1

3 → 2 → 1
```

## Project Files

* `README.md` – Project documentation
* `elevator_controller.v` – Verilog design code
* `elevator_controller_tb.v` – Testbench
* `simulation_output.txt` – Simulation results

## Tools Used

* Verilog HDL
* Xilinx Vivado / ModelSim / Icarus Verilog
* GitHub

## Applications

* Elevator control systems
* Digital control systems
* FPGA projects
* Automation systems
* Sequential logic learning

## Conclusion

The Elevator Controller was successfully designed and simulated using Verilog HDL. The simulation demonstrates that the elevator moves toward the requested floor one floor at a time.
