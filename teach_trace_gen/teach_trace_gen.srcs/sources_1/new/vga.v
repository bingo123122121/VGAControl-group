`timescale 1ns / 1ps

module vga(
    input clk,
    input rst,
    
    input [7: 0] vga_num,
    
    output hs,
    output vs,
    output [3: 0] r,
    output [3: 0] g,
    output [3: 0] b
    );
    
    // 600 * 480 * 60Hz vga参数
    parameter  H_SYNC   =  10'd96;    //行同步
    parameter  H_BACK   =  10'd48;    //行显示后沿
    parameter  H_DISP   =  10'd640;   //行有效数据
    parameter  H_FRONT  =  10'd16;    //行显示前沿
    parameter  H_TOTAL  =  10'd800;   //行扫描周期
    
    parameter  V_SYNC   =  10'd2;     //场同步
    parameter  V_BACK   =  10'd33;    //场显示后沿
    parameter  V_DISP   =  10'd480;   //场有效数据
    parameter  V_FRONT  =  10'd10;    //场显示前沿
    parameter  V_TOTAL  =  10'd525;   //场扫描周期
    
    // 颜色参数
    parameter RED_R = 4'b1111;
    parameter RED_G = 4'b0000;
    parameter RED_B = 4'b0000;
    
    parameter BLACK_R = 4'b0000;
    parameter BLACK_G = 4'b0000;
    parameter BLACK_B = 4'b0000;
    
    parameter WHITE_R = 4'b1111;
    parameter WHITE_G = 4'b1111;
    parameter WHITE_B = 4'b1111;
    
    // 行、列同步信号
    reg [9: 0] h_pos, v_pos;
    
    always @(posedge clk) begin
        if (!rst) begin
            h_pos <= 10'b0;
            v_pos <= 10'b0;
        end
        else begin
            if (h_pos < H_TOTAL) begin
                if (v_pos < V_TOTAL) begin
                    v_pos <= v_pos + 1;
                end
                else begin
                    v_pos <= 10'b0;
                    h_pos <= h_pos + 1;
                end
            end
            else begin
                h_pos <= 10'b0;
                v_pos <= 10'b0;
            end
        end
    end
    
    assign hs = (h_pos < H_SYNC) ? 1'b0 : 1'b1;
    assign vs = (v_pos < V_SYNC) ? 1'b0 : 1'b1;
    
    // rgb颜色控制
    wire [6: 0] light1, light0;
    wire [3: 0] num1, num0;
    
    assign num0 = vga_num[3: 0];
    assign num1 = vga_num[7: 4];
    
    assign light0 = (num0 == 0) ? 7'b1110111 :
                    (num0 == 1) ? 7'b0100100 :
                    (num0 == 2) ? 7'b1011101 :
                    (num0 == 3) ? 7'b1101101 :
                    (num0 == 4) ? 7'b0101110 :
                    (num0 == 5) ? 7'b1101011 :
                    (num0 == 6) ? 7'b1111011 :
                    (num0 == 7) ? 7'b0100101 :
                    (num0 == 8) ? 7'b1111111 :
                    (num0 == 9) ? 7'b1101111 :
                    (num0 == 10) ? 7'b0111111 :
                    (num0 == 11) ? 7'b1111010 :
                    (num0 == 12) ? 7'b1010011 :
                    (num0 == 13) ? 7'b1111100 :
                    (num0 == 14) ? 7'b1011011 :
                    (num0 == 15) ? 7'b0011011 :
                    7'b0000000;
                    
    assign light1 = (num1 == 0) ? 7'b1110111 :
                    (num1 == 1) ? 7'b0100100 :
                    (num1 == 2) ? 7'b1011101 :
                    (num1 == 3) ? 7'b1101101 :
                    (num1 == 4) ? 7'b0101110 :
                    (num1 == 5) ? 7'b1101011 :
                    (num1 == 6) ? 7'b1111011 :
                    (num1 == 7) ? 7'b0100101 :
                    (num1 == 8) ? 7'b1111111 :
                    (num1 == 9) ? 7'b1101111 :
                    (num1 == 10) ? 7'b0111111 :
                    (num1 == 11) ? 7'b1111010 :
                    (num1 == 12) ? 7'b1010011 :
                    (num1 == 13) ? 7'b1111100 :
                    (num1 == 14) ? 7'b1011011 :
                    (num1 == 15) ? 7'b0011011 :
                    7'b0000000;
    
    reg [3: 0] r_reg, g_reg, b_reg;
    
    assign r = r_reg;
    assign g = g_reg;
    assign b = b_reg;
    
    always @(posedge clk) begin
        r_reg <= WHITE_R;
        g_reg <= WHITE_G;
        b_reg <= WHITE_B;
        
        // 显示右边数字
        if(h_pos > 420 && h_pos < 480 && v_pos > 85 && v_pos < 105) begin
            if(light0[0]) begin
                r_reg <= BLACK_R;
                g_reg <= BLACK_G;
                b_reg <= BLACK_B;
            end
            else begin
                r_reg <= WHITE_R;
                g_reg <= WHITE_G;
                b_reg <= WHITE_B;
            end
        end
        else if(h_pos > 400 && h_pos < 420 && v_pos > 110 && v_pos < 230) begin
            if(light0[1]) begin
                r_reg <= BLACK_R;
                g_reg <= BLACK_G;
                b_reg <= BLACK_B;
            end
            else begin
                r_reg <= WHITE_R;
                g_reg <= WHITE_G;
                b_reg <= WHITE_B;
            end
        end
        else if(h_pos > 480 && h_pos < 500 && v_pos > 110 && v_pos < 230) begin
            if(light0[2]) begin
                r_reg <= BLACK_R;
                g_reg <= BLACK_G;
                b_reg <= BLACK_B;
            end
            else begin
                r_reg <= WHITE_R;
                g_reg <= WHITE_G;
                b_reg <= WHITE_B;
            end
        end
        else if(h_pos > 420 && h_pos < 480 && v_pos > 235 && v_pos < 245) begin
            if(light0[3]) begin
                r_reg <= BLACK_R;
                g_reg <= BLACK_G;
                b_reg <= BLACK_B;
            end
            else begin
                r_reg <= WHITE_R;
                g_reg <= WHITE_G;
                b_reg <= WHITE_B;
            end
        end
        else if(h_pos > 480 && h_pos < 500 && v_pos > 250 && v_pos < 370) begin
            if(light0[4]) begin
                r_reg <= BLACK_R;
                g_reg <= BLACK_G;
                b_reg <= BLACK_B;
            end
            else begin
                r_reg <= WHITE_R;
                g_reg <= WHITE_G;
                b_reg <= WHITE_B;
            end
        end
        else if(h_pos > 400 && h_pos < 420 && v_pos > 250 && v_pos < 370) begin
            if(light0[5]) begin
                r_reg <= BLACK_R;
                g_reg <= BLACK_G;
                b_reg <= BLACK_B;
            end
            else begin
                r_reg <= WHITE_R;
                g_reg <= WHITE_G;
                b_reg <= WHITE_B;
            end
        end
        else if(h_pos > 420 && h_pos < 480 && v_pos > 375 && v_pos < 395) begin
            if(light0[6]) begin
                r_reg <= BLACK_R;
                g_reg <= BLACK_G;
                b_reg <= BLACK_B;
            end
            else begin
                r_reg <= WHITE_R;
                g_reg <= WHITE_G;
                b_reg <= WHITE_B;
            end
        end
        
        // 显示左边数字
        if(h_pos > 120 && h_pos < 180 && v_pos > 85 && v_pos < 105) begin
            if(light1[0]) begin
                r_reg <= BLACK_R;
                g_reg <= BLACK_G;
                b_reg <= BLACK_B;
            end
            else begin
                r_reg <= WHITE_R;
                g_reg <= WHITE_G;
                b_reg <= WHITE_B;
            end
        end
        else if(h_pos > 180 && h_pos < 200 && v_pos > 110 && v_pos < 230) begin
            if(light1[1]) begin
                r_reg <= BLACK_R;
                g_reg <= BLACK_G;
                b_reg <= BLACK_B;
            end
            else begin
                r_reg <= WHITE_R;
                g_reg <= WHITE_G;
                b_reg <= WHITE_B;
            end
        end
        else if(h_pos > 100 && h_pos < 120 && v_pos > 110 && v_pos < 230) begin
            if(light1[2]) begin
                r_reg <= BLACK_R;
                g_reg <= BLACK_G;
                b_reg <= BLACK_B;
            end
            else begin
                r_reg <= WHITE_R;
                g_reg <= WHITE_G;
                b_reg <= WHITE_B;
            end
        end
        else if(h_pos > 120 && h_pos < 180 && v_pos > 235 && v_pos < 245) begin
            if(light1[3]) begin
                r_reg <= BLACK_R;
                g_reg <= BLACK_G;
                b_reg <= BLACK_B;
            end
            else begin
                r_reg <= WHITE_R;
                g_reg <= WHITE_G;
                b_reg <= WHITE_B;
            end
        end
        else if(h_pos > 180 && h_pos < 200 && v_pos > 250 && v_pos < 370) begin
            if(light1[4]) begin
                r_reg <= BLACK_R;
                g_reg <= BLACK_G;
                b_reg <= BLACK_B;
            end
            else begin
                r_reg <= WHITE_R;
                g_reg <= WHITE_G;
                b_reg <= WHITE_B;
            end
        end
        else if(h_pos > 100 && h_pos < 120 && v_pos > 250 && v_pos < 370) begin
            if(light1[5]) begin
                r_reg <= BLACK_R;
                g_reg <= BLACK_G;
                b_reg <= BLACK_B;
            end
            else begin
                r_reg <= WHITE_R;
                g_reg <= WHITE_G;
                b_reg <= WHITE_B;
            end
        end
        else if(h_pos > 120 && h_pos < 180 && v_pos > 375 && v_pos < 395) begin
            if(light1[6]) begin
                r_reg <= BLACK_R;
                g_reg <= BLACK_G;
                b_reg <= BLACK_B;
            end
            else begin
                r_reg <= WHITE_R;
                g_reg <= WHITE_G;
                b_reg <= WHITE_B;
            end
        end
    end
    
endmodule

















