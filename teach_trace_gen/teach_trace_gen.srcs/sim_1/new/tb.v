`timescale 1ns / 1ps

module tb();

    reg clk;
    reg rstn;
    
    initial begin
        clk = 0;
        rstn = 0;
        
        # 100 rstn = 1;
    end
    
    always # 5 clk = ~clk;
    
    teach_soc_top teach_soc_top_u(
        .clk(clk),
        .resetn(rstn),
    
        // ----- GPIO -----
        .digital_num0(),
        .digital_num1(),
        .digital_cs()
    );

endmodule
