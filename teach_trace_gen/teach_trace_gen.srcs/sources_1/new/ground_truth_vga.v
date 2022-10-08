//`timescale 1ns / 1ps

//module vga(
//    input clk,
//    input rst,
    
//    input [7: 0] vga_num,
    
//    output hs,
//    output vs,
//    output [3: 0] r,
//    output [3: 0] g,
//    output [3: 0] b
//    );
    
//    wire clk_vga;
    
//    clk_wiz clk_wiz(
//        .clk_in1(clk),
//        .reset(~rst),
//        .clk_out1(clk_vga)
//    );
    
////    // 1024 * 768 * 60MHz vga参数
////    parameter  H_SYNC   =  11'd96;    //行同步
////    parameter  H_BACK   =  11'd48;    //行显示后沿
////    parameter  H_DISP   =  11'd640;   //行有效数据
////    parameter  H_FRONT  =  11'd16;    //行显示前沿
////    parameter  H_TOTAL  =  11'd800;   //行扫描周期
    
////    parameter  V_SYNC   =  11'd2;     //场同步
////    parameter  V_BACK   =  11'd33;    //场显示后沿
////    parameter  V_DISP   =  11'd480;   //场有效数据
////    parameter  V_FRONT  =  11'd10;    //场显示前沿
////    parameter  V_TOTAL  =  11'd525;   //场扫描周期
    
//    // 1024 * 768 * 60MHz vga参数
//    parameter  H_SYNC   =  11'd152;    //行同步
//    parameter  H_BACK   =  11'd232;    //行显示后沿
//    parameter  H_DISP   =  11'd1440;   //行有效数据
//    parameter  H_FRONT  =  11'd80;    //行显示前沿
//    parameter  H_TOTAL  =  11'd1904;   //行扫描周期
    
//    parameter  V_SYNC   =  11'd3;     //场同步
//    parameter  V_BACK   =  11'd28;    //场显示后沿
//    parameter  V_DISP   =  11'd900;   //场有效数据
//    parameter  V_FRONT  =  11'd1;    //场显示前沿
//    parameter  V_TOTAL  =  11'd932;   //场扫描周期
    
//    // 颜色参数
//    parameter RED_R = 4'b1111;
//    parameter RED_G = 4'b0000;
//    parameter RED_B = 4'b0000;
    
//    parameter BLACK_R = 4'b0000;
//    parameter BLACK_G = 4'b0000;
//    parameter BLACK_B = 4'b0000;
    
//    parameter WHITE_R = 4'b1111;
//    parameter WHITE_G = 4'b1111;
//    parameter WHITE_B = 4'b1111;
    
//    // 行、列同步信号
//    reg [10: 0] h_pos, v_pos;
    
//    always @(posedge clk_vga) begin
//        if (!rst) begin
//            h_pos <= 11'b0;
//            v_pos <= 11'b0;
//        end
//        else begin
//            if (h_pos == H_TOTAL - 1) begin
//                h_pos <= 11'b0;
//                if (v_pos == V_TOTAL - 1) begin
//                    v_pos <= 11'b0;
//                end
//                else begin
//                    v_pos <= v_pos + 1;
//                end
//            end
//            else begin
//                h_pos <= h_pos + 1;
//                v_pos <= v_pos;
//            end
//        end
//    end
    
//    reg reg_hs;
//    reg reg_vs;
    
//    always @ (posedge clk_vga) begin
//        if (h_pos < H_SYNC) begin
//            reg_hs <= 1'b0;
//        end
//        else begin
//            reg_hs <= 1'b1;
//        end  
//    end  
    
//    always @ (posedge clk_vga) begin
//        if (v_pos < V_SYNC) begin
//            reg_vs <= 1'b0;
//        end
//        else begin
//            reg_vs <= 1'b1;
//        end  
//    end
          
//    assign hs = reg_hs;
//    assign vs = reg_vs;
    
//    // rgb颜色控制
//    wire [6: 0] light1, light0;
//    wire [3: 0] num1, num0;
    
//    assign num0 = vga_num[3: 0];
//    assign num1 = vga_num[7: 4];
    
//    assign light0 = (num0 == 0) ? 7'b1110111 :
//                    (num0 == 1) ? 7'b0100100 :
//                    (num0 == 2) ? 7'b1011101 :
//                    (num0 == 3) ? 7'b1101101 :
//                    (num0 == 4) ? 7'b0101110 :
//                    (num0 == 5) ? 7'b1101011 :
//                    (num0 == 6) ? 7'b1111011 :
//                    (num0 == 7) ? 7'b0100101 :
//                    (num0 == 8) ? 7'b1111111 :
//                    (num0 == 9) ? 7'b1101111 :
//                    (num0 == 10) ? 7'b0111111 :
//                    (num0 == 11) ? 7'b1111010 :
//                    (num0 == 12) ? 7'b1010011 :
//                    (num0 == 13) ? 7'b1111100 :
//                    (num0 == 14) ? 7'b1011011 :
//                    (num0 == 15) ? 7'b0011011 :
//                    7'b0000000;
                    
//    assign light1 = (num1 == 0) ? 7'b1110111 :
//                    (num1 == 1) ? 7'b0100100 :
//                    (num1 == 2) ? 7'b1011101 :
//                    (num1 == 3) ? 7'b1101101 :
//                    (num1 == 4) ? 7'b0101110 :
//                    (num1 == 5) ? 7'b1101011 :
//                    (num1 == 6) ? 7'b1111011 :
//                    (num1 == 7) ? 7'b0100101 :
//                    (num1 == 8) ? 7'b1111111 :
//                    (num1 == 9) ? 7'b1101111 :
//                    (num1 == 10) ? 7'b0111111 :
//                    (num1 == 11) ? 7'b1111010 :
//                    (num1 == 12) ? 7'b1010011 :
//                    (num1 == 13) ? 7'b1111100 :
//                    (num1 == 14) ? 7'b1011011 :
//                    (num1 == 15) ? 7'b0011011 :
//                    7'b0000000;
    
//    reg [3: 0] r_reg, g_reg, b_reg;
    
//    assign r = r_reg;
//    assign g = g_reg;
//    assign b = b_reg;
    
//    always @(posedge clk_vga) begin

//        // 显示右边数字
//        if(h_pos < 50 && v_pos <50) begin
         
//                r_reg <= RED_R;
//                g_reg <= RED_G;
//                b_reg <= RED_B;
//        end
//        else if(h_pos > 420 && h_pos < 480 && v_pos > 85 && v_pos < 105) begin
//            if(light0[0]) begin
//                r_reg <= BLACK_R;
//                g_reg <= BLACK_G;
//                b_reg <= BLACK_B;
//            end
//            else begin
//                r_reg <= WHITE_R;
//                g_reg <= WHITE_G;
//                b_reg <= WHITE_B;
//            end
//        end
//        else if(h_pos > 400 && h_pos < 420 && v_pos > 110 && v_pos < 230) begin
//            if(light0[1]) begin
//                r_reg <= BLACK_R;
//                g_reg <= BLACK_G;
//                b_reg <= BLACK_B;
//            end
//            else begin
//                r_reg <= WHITE_R;
//                g_reg <= WHITE_G;
//                b_reg <= WHITE_B;
//            end
//        end
//        else if(h_pos > 480 && h_pos < 500 && v_pos > 110 && v_pos < 230) begin
//            if(light0[2]) begin
//                r_reg <= BLACK_R;
//                g_reg <= BLACK_G;
//                b_reg <= BLACK_B;
//            end
//            else begin
//                r_reg <= WHITE_R;
//                g_reg <= WHITE_G;
//                b_reg <= WHITE_B;
//            end
//        end
//        else if(h_pos > 420 && h_pos < 480 && v_pos > 235 && v_pos < 245) begin
//            if(light0[3]) begin
//                r_reg <= BLACK_R;
//                g_reg <= BLACK_G;
//                b_reg <= BLACK_B;
//            end
//            else begin
//                r_reg <= WHITE_R;
//                g_reg <= WHITE_G;
//                b_reg <= WHITE_B;
//            end
//        end
//        else if(h_pos > 480 && h_pos < 500 && v_pos > 250 && v_pos < 370) begin
//            if(light0[4]) begin
//                r_reg <= BLACK_R;
//                g_reg <= BLACK_G;
//                b_reg <= BLACK_B;
//            end
//            else begin
//                r_reg <= WHITE_R;
//                g_reg <= WHITE_G;
//                b_reg <= WHITE_B;
//            end
//        end
//        else if(h_pos > 400 && h_pos < 420 && v_pos > 250 && v_pos < 370) begin
//            if(light0[5]) begin
//                r_reg <= BLACK_R;
//                g_reg <= BLACK_G;
//                b_reg <= BLACK_B;
//            end
//            else begin
//                r_reg <= WHITE_R;
//                g_reg <= WHITE_G;
//                b_reg <= WHITE_B;
//            end
//        end
//        else if(h_pos > 420 && h_pos < 480 && v_pos > 375 && v_pos < 395) begin
//            if(light0[6]) begin
//                r_reg <= BLACK_R;
//                g_reg <= BLACK_G;
//                b_reg <= BLACK_B;
//            end
//            else begin
//                r_reg <= WHITE_R;
//                g_reg <= WHITE_G;
//                b_reg <= WHITE_B;
//            end
//        end
        
//        // 显示左边数字
//        else if(h_pos > 120 && h_pos < 180 && v_pos > 85 && v_pos < 105) begin
//            if(light1[0]) begin
//                r_reg <= BLACK_R;
//                g_reg <= BLACK_G;
//                b_reg <= BLACK_B;
//            end
//            else begin
//                r_reg <= WHITE_R;
//                g_reg <= WHITE_G;
//                b_reg <= WHITE_B;
//            end
//        end
//        else if(h_pos > 180 && h_pos < 200 && v_pos > 110 && v_pos < 230) begin
//            if(light1[1]) begin
//                r_reg <= BLACK_R;
//                g_reg <= BLACK_G;
//                b_reg <= BLACK_B;
//            end
//            else begin
//                r_reg <= WHITE_R;
//                g_reg <= WHITE_G;
//                b_reg <= WHITE_B;
//            end
//        end
//        else if(h_pos > 100 && h_pos < 120 && v_pos > 110 && v_pos < 230) begin
//            if(light1[2]) begin
//                r_reg <= BLACK_R;
//                g_reg <= BLACK_G;
//                b_reg <= BLACK_B;
//            end
//            else begin
//                r_reg <= WHITE_R;
//                g_reg <= WHITE_G;
//                b_reg <= WHITE_B;
//            end
//        end
//        else if(h_pos > 120 && h_pos < 180 && v_pos > 235 && v_pos < 245) begin
//            if(light1[3]) begin
//                r_reg <= BLACK_R;
//                g_reg <= BLACK_G;
//                b_reg <= BLACK_B;
//            end
//            else begin
//                r_reg <= WHITE_R;
//                g_reg <= WHITE_G;
//                b_reg <= WHITE_B;
//            end
//        end
//        else if(h_pos > 180 && h_pos < 200 && v_pos > 250 && v_pos < 370) begin
//            if(light1[4]) begin
//                r_reg <= BLACK_R;
//                g_reg <= BLACK_G;
//                b_reg <= BLACK_B;
//            end
//            else begin
//                r_reg <= WHITE_R;
//                g_reg <= WHITE_G;
//                b_reg <= WHITE_B;
//            end
//        end
//        else if(h_pos > 100 && h_pos < 120 && v_pos > 250 && v_pos < 370) begin
//            if(light1[5]) begin
//                r_reg <= BLACK_R;
//                g_reg <= BLACK_G;
//                b_reg <= BLACK_B;
//            end
//            else begin
//                r_reg <= WHITE_R;
//                g_reg <= WHITE_G;
//                b_reg <= WHITE_B;
//            end
//        end
//        else if(h_pos > 120 && h_pos < 180 && v_pos > 375 && v_pos < 395) begin
//            if(light1[6]) begin
//                r_reg <= BLACK_R;
//                g_reg <= BLACK_G;
//                b_reg <= BLACK_B;
//            end
//            else begin
//                r_reg <= WHITE_R;
//                g_reg <= WHITE_G;
//                b_reg <= WHITE_B;
//            end
//        end
        
//        else begin
//            r_reg <= WHITE_R;
//            g_reg <= WHITE_G;
//            b_reg <= WHITE_B;
//        end
//    end
    
//endmodule

`timescale 1ns / 1ps

`define H_SYNC_PULSE    11'd152
`define H_FRONT_PORCH   11'd232
`define H_ACTIVE        11'd1440
`define H_BACK_PORCH    11'd80
`define H_TOTAL         11'd1904
        
`define V_SYNC_PULSE    11'd3
`define V_FRONT_PORCH   11'd28
`define V_ACTIVE        11'd900
`define V_BACK_PORCH    11'd1
`define V_TOTAL         11'd932

`define SHIFT 11'd200

`define WHITE_R 4'b1111
`define WHITE_G 4'b1111
`define WHITE_B 4'b1111

`define BLACK_R 4'b0000
`define BLACK_G 4'b0000
`define BLACK_B 4'b0000

`define RED_R 4'b1101
`define RED_G 4'b1111
`define RED_B 4'b1111

`define GREEN_R  4'b0010
`define GREEN_G  4'b0100
`define GREEN_B  4'b1000

module vga (
        input           clk,
        input           rstn,
        input [7:0]     num,
        
        output          hs,
        output          vs,
        output [3:0]    r,
        output [3:0]    g,
        output [3:0]    b
    );

    wire clk_vga;
    
    clk_wiz u_clk_wiz (
        .clk_in1(clk),
        .reset(~rstn),
        .clk_out1(clk_vga)
    );
    
    reg [10:0]  h_cur;
    reg [10:0]  v_cur;
    
    always @ (posedge clk_vga) begin
        if (!rstn) begin
            h_cur <= 11'b0;
            v_cur <= 11'b0;
        end
        else begin
            if (h_cur == `H_TOTAL - 1) begin
                h_cur <= 11'b0;
                if (v_cur == `V_TOTAL - 1) begin
                    v_cur <= 11'b0;
                end
                else begin
                    v_cur <= v_cur + 1;
                end
            end
            else begin
                h_cur <= h_cur + 1;
                v_cur <= v_cur;
            end
        end
    end
        
        
    reg reg_hs;
    reg reg_vs;
    
    always @ (posedge clk_vga) begin
        if (h_cur < `H_SYNC_PULSE) begin
            reg_hs <= 1'b0;
        end
        else begin
            reg_hs <= 1'b1;
        end  
    end  
    
    always @ (posedge clk_vga) begin
        if (v_cur < `V_SYNC_PULSE) begin
            reg_vs <= 1'b0;
        end
        else begin
            reg_vs <= 1'b1;
        end  
    end
          
    assign hs = reg_hs;
    assign vs = reg_vs;
    
    
    reg [3:0]   reg_r;
    reg [3:0]   reg_g;
    reg [3:0]   reg_b;
    
    wire [6:0]  light0;//right //low
    wire [6:0]  light1;//left  //high
    wire [3:0] num0;
    wire [3:0] num1;
    assign num0=num[3:0];
    assign num1=num[7:4];
    
    assign light0 = (num0 == 0) ? 7'b111_1110 :
                   (num0 == 1) ? 7'b011_0000 :
                   (num0 == 2) ? 7'b110_1101 :
                   (num0 == 3) ? 7'b111_1001 :
                   (num0 == 4) ? 7'b011_0011 :
                   (num0 == 5) ? 7'b101_1011:
                   (num0 == 6) ? 7'b101_1111 :
                   (num0 == 7) ? 7'b111_0000 :
                   (num0 == 8) ? 7'b111_1111 :
                   (num0 == 9) ? 7'b111_1011 :
                   (num0 == 10) ? 7'b111_0111 :
                   (num0 == 11) ? 7'b001_1111 :
                   (num0 == 12) ? 7'b000_1101 :
                   (num0 == 13) ? 7'b011_1101 :
                   (num0 == 14) ? 7'b100_1111 :
                   (num0 == 15) ? 7'b100_0111 :
                   7'b0000000;

    assign light1 = (num1 == 0) ? 7'b111_1110 :
                   (num1 == 1) ? 7'b011_0000 :
                   (num1 == 2) ? 7'b110_1101 :
                   (num1 == 3) ? 7'b111_1001 :
                   (num1 == 4) ? 7'b011_0011 :
                   (num1 == 5) ? 7'b101_1011:
                   (num1 == 6) ? 7'b101_1111 :
                   (num1 == 7) ? 7'b111_0000 :
                   (num1 == 8) ? 7'b111_1111 :
                   (num1 == 9) ? 7'b111_1011 :
                   (num1 == 10) ? 7'b111_0111 :
                   (num1 == 11) ? 7'b001_1111 :
                   (num1 == 12) ? 7'b000_1101 :
                   (num1 == 13) ? 7'b011_1101 :
                   (num1 == 14) ? 7'b100_1111 :
                   (num1 == 15) ? 7'b100_0111 :
                   7'b0000000;
              
    always @ (posedge clk_vga) begin
        //light1
        if (h_cur >  `SHIFT+300 && h_cur <  `SHIFT+500 && v_cur >  350 && v_cur <  450 ) begin
            if (light1[0]) begin
                reg_r <= `RED_R;
                reg_g <= `RED_G;
                reg_b <= `RED_B;
            end
            else begin
                reg_r <= `BLACK_R;
                reg_g <= `BLACK_G;
                reg_b <= `BLACK_B;
            end
        end
        else if (h_cur >  `SHIFT+500 && h_cur <  `SHIFT+600 && v_cur >  200 && v_cur <  350 ) begin
            if (light1[5]) begin
                reg_r <= `RED_R;
                reg_g <= `RED_G;
                reg_b <= `RED_B;
            end
            else begin
                reg_r <= `BLACK_R;
                reg_g <= `BLACK_G;
                reg_b <= `BLACK_B;
            end
        end
        else if (h_cur >  `SHIFT+500 && h_cur <  `SHIFT+600 && v_cur >  450 && v_cur <  600 ) begin
            if (light1[4]) begin
                reg_r <= `RED_R;
                reg_g <= `RED_G;
                reg_b <= `RED_B;
            end
            else begin
                reg_r <= `BLACK_R;
                reg_g <= `BLACK_G;
                reg_b <= `BLACK_B;
            end
        end
        else if (h_cur >  `SHIFT+300 && h_cur <  `SHIFT+500 && v_cur >  600 && v_cur <  700 ) begin
            if (light1[3]) begin
                reg_r <= `RED_R;
                reg_g <= `RED_G;
                reg_b <= `RED_B;
            end
            else begin
                reg_r <= `BLACK_R;
                reg_g <= `BLACK_G;
                reg_b <= `BLACK_B;
            end
        end
        else if (h_cur >  `SHIFT+200 && h_cur <  `SHIFT+300 && v_cur >  450 && v_cur <  600 ) begin
            if (light1[2]) begin
                reg_r <= `RED_R;
                reg_g <= `RED_G;
                reg_b <= `RED_B;
            end
            else begin
                reg_r <= `BLACK_R;
                reg_g <= `BLACK_G;
                reg_b <= `BLACK_B;
            end
        end
        else if (h_cur >  `SHIFT+200 && h_cur <  `SHIFT+300 && v_cur >  200 && v_cur <  350 ) begin
            if (light1[1]) begin
                reg_r <= `RED_R;
                reg_g <= `RED_G;
                reg_b <= `RED_B;
            end
            else begin
                reg_r <= `BLACK_R;
                reg_g <= `BLACK_G;
                reg_b <= `BLACK_B;
            end
        end
        else if (h_cur >  `SHIFT+300 && h_cur <  `SHIFT+500 && v_cur >  100 && v_cur <  200 ) begin
            if (light1[6]) begin
                reg_r <= `RED_R;
                reg_g <= `RED_G;
                reg_b <= `RED_B;
            end
            else begin
                reg_r <= `BLACK_R;
                reg_g <= `BLACK_G;
                reg_b <= `BLACK_B;
            end
        end
        
        //light0    
        else if (h_cur >  `SHIFT+800 && h_cur <  `SHIFT+1000 && v_cur >  350 && v_cur <  450 ) begin
            if (light0[0]) begin
                reg_r <= `RED_R;
                reg_g <= `RED_G;
                reg_b <= `RED_B;
            end
            else begin
                reg_r <= `BLACK_R;
                reg_g <= `BLACK_G;
                reg_b <= `BLACK_B;
            end
        end
        else if (h_cur >  `SHIFT+1000 && h_cur <  `SHIFT+1100 && v_cur >  200 && v_cur <  350 ) begin
            if (light0[5]) begin
                reg_r <= `RED_R;
                reg_g <= `RED_G;
                reg_b <= `RED_B;
            end
            else begin
                reg_r <= `BLACK_R;
                reg_g <= `BLACK_G;
                reg_b <= `BLACK_B;
            end
        end
        else if (h_cur >  `SHIFT+1000 && h_cur <  `SHIFT+1100 && v_cur >  450 && v_cur <  600 ) begin
            if (light0[4]) begin
                reg_r <= `RED_R;
                reg_g <= `RED_G;
                reg_b <= `RED_B;
            end
            else begin
                reg_r <= `BLACK_R;
                reg_g <= `BLACK_G;
                reg_b <= `BLACK_B;
            end
        end
        else if (h_cur >  `SHIFT+800 && h_cur <  `SHIFT+1000 && v_cur >  600 && v_cur <  700 ) begin
            if (light0[3]) begin
                reg_r <= `RED_R;
                reg_g <= `RED_G;
                reg_b <= `RED_B;
            end
            else begin
                reg_r <= `BLACK_R;
                reg_g <= `BLACK_G;
                reg_b <= `BLACK_B;
            end
        end
        else if (h_cur >  `SHIFT+700 && h_cur <  `SHIFT+800 && v_cur >  450 && v_cur <  600 ) begin
            if (light0[2]) begin
                reg_r <= `RED_R;
                reg_g <= `RED_G;
                reg_b <= `RED_B;
            end
            else begin
                reg_r <= `BLACK_R;
                reg_g <= `BLACK_G;
                reg_b <= `BLACK_B;
            end
        end
        else if (h_cur >  `SHIFT+700 && h_cur <  `SHIFT+800 && v_cur >  200 && v_cur <  350 ) begin
            if (light0[1]) begin
                reg_r <= `RED_R;
                reg_g <= `RED_G;
                reg_b <= `RED_B;
            end
            else begin
                reg_r <= `BLACK_R;
                reg_g <= `BLACK_G;
                reg_b <= `BLACK_B;
            end
        end
        else if (h_cur >  `SHIFT+800 && h_cur <  `SHIFT+1000 && v_cur >  100 && v_cur <  200 ) begin
            if (light0[6]) begin
                reg_r <= `RED_R;
                reg_g <= `RED_G;
                reg_b <= `RED_B;
            end
            else begin
                reg_r <= `BLACK_R;
                reg_g <= `BLACK_G;
                reg_b <= `BLACK_B;
            end
        end
        
        else begin
            reg_r <= `BLACK_R;
            reg_g <= `BLACK_G;
            reg_b <= `BLACK_B;
        end
    end
    
    assign r = reg_r;
    assign g = reg_g;
    assign b = reg_b;
    
endmodule
















