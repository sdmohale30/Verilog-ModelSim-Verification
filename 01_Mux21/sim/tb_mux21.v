`timescale 1ns / 1ps

module tb_mux21();
    // Inputs are registers (reg)
    reg a, b, sel;
    // Outputs are wires
    wire y;
    
    // Connect the testbench signals to your design module
    mux21 dut (
        .a(a), 
        .b(b), 
        .sel(sel), 
        .y(y)
    );
    
    initial begin
        // Monitor outputs in the transcript window text stream
        $monitor("Time=%0t | A=%b B=%b Sel=%b | Y=%b", $time, a, b, sel, y);
        
        // Test Case 1: Sel = 0, Output should track A
        a = 0; b = 1; sel = 0; #10; // Y should be 0
        a = 1; b = 1; sel = 0; #10; // Y should switch to 1
        
        // Test Case 2: Sel = 1, Output should track B
        a = 1; b = 0; sel = 1; #10; // Y should switch to 0
        a = 1; b = 1; sel = 1; #10; // Y should switch to 1
        
        $finish;
    end
endmodule
