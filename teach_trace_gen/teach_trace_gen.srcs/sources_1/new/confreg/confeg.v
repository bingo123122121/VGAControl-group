`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2020/09/08 09:30:42
//////////////////////////////////////////////////////////////////////////////////

`define RST_ENABLE 1'b0

`define DIGITAL_NUM_ADDR    16'h0000 // 0xbfaf_8000

module confreg(
    input   wire        clk,
    input   wire        rst,
    
    input   wire        confreg_en,
    input   wire[3:0]   confreg_wen,
    input   wire[31:0]  confreg_wdata,
    input   wire[31:0]  confreg_addr,
    output  wire[31:0]  confreg_rdata,
    
    output  wire[6:0]   digital_num0,       // ���ĸ�7�����������
    output  wire[7:0]   digital_cs,         // ����ܶ�ѡ�ź�
    output  reg[7:0]   vga_num
    );
    
//    reg [31: 0] confreg_en, confreg_wen;
    
//    always @(posedge clk) begin
//        if (!rst) begin
//            confreg_en <= 0;
//            confreg_wen <= 0;
//        end
//        else begin
//            confreg_en <= _confreg_en;
//            confreg_wen <= _confreg_wen;
//        end
//    end
    
    wire conf_we;
    assign conf_we = confreg_en & (|confreg_wen[0]);
    
    // ��ǰҪ��ʾ������
    reg[31:0]   digital_num_v;
    
    //vag��ʾ����
    always @(posedge clk) begin
        if(!rst) vga_num <= 8'b0;
        else vga_num <= digital_num_v[31:24];
    end
    
    // read confreg
    assign confreg_read_data = get_confreg_read_data(confreg_addr);
    function [31:0] get_confreg_read_data(input [31:0] confreg_addr);
    begin
        case(confreg_addr[15:0])
        `DIGITAL_NUM_ADDR   : get_confreg_read_data = digital_num_v;
        default: get_confreg_read_data = 32'b0;
        endcase
    end
    endfunction  

    /*********** digital num ***********/
    reg[19:0] count;
    reg[3:0] scan_data1;                // ��4λ�͸�4λ
    reg[7:0] scan_enable;
    reg[6:0] num_a_g1;
    
    wire write_digital_num;
    assign write_digital_num = conf_we & (confreg_addr[15:0] == `DIGITAL_NUM_ADDR);
    
    // д��Ҫ��ʾ��8λ����
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
            scan_enable <= 8'b0;
        end else begin
            case(count[18])
            1'b0: begin
                scan_data1 <= digital_num_v[31:28];
                scan_enable <= 8'b0000_0010;
            end
            1'b1: begin
                scan_data1 <= digital_num_v[27:24];
                scan_enable <= 8'b0000_0001;
            end
            default: ;
            endcase
        end
    end
    
    always @ (posedge clk) begin
        if (rst == `RST_ENABLE) begin
            num_a_g1 <= 7'b0;
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
        end
    end
endmodule
