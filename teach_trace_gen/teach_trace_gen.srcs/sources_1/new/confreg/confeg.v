`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2020/09/08 09:30:42
//////////////////////////////////////////////////////////////////////////////////

`define RST_ENABLE 1'b1

`define DIGITAL_NUM_ADDR    16'h0000 // 0xbfaf_0000

module confreg(
    input   wire        clk,
    input   wire        rst,
    
    input   wire        confreg_en,
    input   wire[3:0]   confreg_wen,
    input   wire[31:0]  confreg_wdata,
    input   wire[31:0]  confreg_addr,
    output  wire[31:0]  confreg_rdata,
    
    output  wire[6:0]   digital_num0,       // 右四个7段数码管数字
    output  wire[6:0]   digital_num1,       // 左四个7段数码管数字
    output  wire[7:0]   digital_cs          // 数码管段选信号
    );
    
    wire conf_we;
    assign conf_we = confreg_en & (|confreg_wen);
    
    // 当前要显示的数字
    reg[31:0]   digital_num_v;
    
    // read confreg, on cycle delay
    reg[31:0] conf_rdata_reg;
    assign confreg_rdata = conf_rdata_reg;
    always @ (posedge clk) begin
        if (rst == `RST_ENABLE) begin
            conf_rdata_reg = 32'h0000_0000;
        end else if (confreg_en) begin
            case(confreg_addr[15:0])
                `DIGITAL_NUM_ADDR   : conf_rdata_reg = digital_num_v;
                default: conf_rdata_reg = 32'b0;
            endcase
        end
    end
        

    /*********** digital num ***********/
    reg[19:0] count;
    reg[3:0] scan_data1, scan_data2;                // 低4位和高4位
    reg[7:0] scan_enable;
    reg[6:0] num_a_g1, num_a_g2;
    
    wire write_digital_num;
    assign write_digital_num = conf_we & (confreg_addr[15:0] == `DIGITAL_NUM_ADDR);
    
    // 写入要显示的8位数字
    always @ (posedge clk) begin
        if(rst == `RST_ENABLE) begin
            digital_num_v <= 32'b0;
        end else begin
            if (write_digital_num) begin
                digital_num_v <= confreg_wdata;
            end
        end
    end
    
    assign digital_cs = scan_enable;
    assign digital_num0 = num_a_g1;
    assign digital_num1 = num_a_g2;
    
    always @ (posedge clk) begin
        if (rst == `RST_ENABLE) begin
            count <= 20'b0;
        end else begin
            count <= count + 1;
        end
    end
    
    always @ (posedge clk) begin
        if (rst == `RST_ENABLE) begin
            scan_data1 <= 4'b0;
            scan_data2 <= 4'b0;
            scan_enable <= 8'b0;
        end else begin
            case(count[19:18])
            2'b00: begin
                scan_data1 <= digital_num_v[3:0];
                scan_data2 <= digital_num_v[19:16];
                scan_enable <= 8'b0001_0001;
            end
            2'b01: begin
                scan_data1 <= digital_num_v[7:4];
                scan_data2 <= digital_num_v[23:20];
                scan_enable <= 8'b0010_0010;
            end
            2'b10: begin
                scan_data1 <= digital_num_v[11:8];
                scan_data2 <= digital_num_v[27:24];
                scan_enable <= 8'b0100_0100;
            end
            2'b11: begin
                scan_data1 <= digital_num_v[15:12];
                scan_data2 <= digital_num_v[31:28];
                scan_enable <= 8'b1000_1000;
            end
            default: ;
            endcase
        end
    end
    
    always @ (posedge clk) begin
        if (rst == `RST_ENABLE) begin
            num_a_g1 <= 7'b0;
            num_a_g2 <= 7'b0;
        end else begin
            case(scan_data1)
            4'd0: num_a_g1 <= 7'b111_1110; // 0
            4'd1: num_a_g1 <= 7'b011_0000; // 1
            4'd2: num_a_g1 <= 7'b110_1101; // 2
            4'd3: num_a_g1 <= 7'b111_1001; // 3
            4'd4: num_a_g1 <= 7'b011_0011; // 4
            4'd5: num_a_g1 <= 7'b101_1011; // 5
            4'd6: num_a_g1 <= 7'b101_1111; // 6
            4'd7: num_a_g1 <= 7'b111_0000; // 7
            4'd8: num_a_g1 <= 7'b111_1111; // 8
            4'd9: num_a_g1 <= 7'b111_1011; // 9
            4'd10: num_a_g1 <= 7'b111_0111; // 10
            4'd11: num_a_g1 <= 7'b001_1111; // 11
            4'd12: num_a_g1 <= 7'b100_1110; // 12
            4'd13: num_a_g1 <= 7'b011_1101; // 13
            4'd14: num_a_g1 <= 7'b100_1111; // 14
            4'd15: num_a_g1 <= 7'b100_0111; // 15
            default: ;
            endcase
            
            case(scan_data2)
            4'd0: num_a_g2 <= 7'b111_1110; // 0
            4'd1: num_a_g2 <= 7'b011_0000; // 1
            4'd2: num_a_g2 <= 7'b110_1101; // 2
            4'd3: num_a_g2 <= 7'b111_1001; // 3
            4'd4: num_a_g2 <= 7'b011_0011; // 4
            4'd5: num_a_g2 <= 7'b101_1011; // 5
            4'd6: num_a_g2 <= 7'b101_1111; // 6
            4'd7: num_a_g2 <= 7'b111_0000; // 7
            4'd8: num_a_g2 <= 7'b111_1111; // 8
            4'd9: num_a_g2 <= 7'b111_1011; // 9
            4'd10: num_a_g2 <= 7'b111_0111; // 10
            4'd11: num_a_g2 <= 7'b001_1111; // 11
            4'd12: num_a_g2 <= 7'b100_1110; // 12
            4'd13: num_a_g2 <= 7'b011_1101; // 13
            4'd14: num_a_g2 <= 7'b100_1111; // 14
            4'd15: num_a_g2 <= 7'b100_0111; // 15
            default: ;
            endcase
        end
    end
endmodule
