`timescale 1ns / 1ps

// cpu���ǰ��յ�·ͼ���ߣ���ϸ�������Ĺ���
module cpu(
    input clk,
    input rst,
    
    output im_en,
    output [3 :0] im_wen,
    output [31:0] im_addr,
    output [31:0] im_wd,
    input [31:0] im_rd,
    
    // cpu����
    output dm_en,
    output [3 :0] dm_wen,
    output [31:0] dm_addr,
    output [31:0] dm_wd,
    input [31:0] dm_rd
    );
    
    // instruction memoryֻ����д
    assign im_wen = 4'b0;
    assign im_wd = 32'b0;
    
    // ʹ���ź���rst
    assign im_en = rst;
    assign dm_en = rst;
    
    // ȡָ����
    wire [1: 0] br_we;
    wire [31: 0] rs_data;
    wire [31: 0] rt_data;
//    wire [3: 0] pc4;
    wire [25: 0] inst_addr;
//    wire [31: 0] sel_4_0;
    wire pause;
    wire drop;
    
//    wire [31: 0] inst_val;
//    wire [31: 0] pc_val;
    
    buffer0 buffer0(
        .clk(clk),
        .rst(rst),
        
        ._br_we(br_we),
        ._rs_data(rs_data),
        ._rt_data(rt_data),
//        ._pc4(pc4),
        ._inst_addr(inst_addr),
//        ._sel_4_0(sel_4_0),
        .pause(pause),
    
        .pc_val(im_addr)
    );
    
    // ���벿��
    wire reg_we4;                        // ��һ��ָ���д�Ĵ����ź�
    wire [31: 0] reg_wd;                 // ��һ��ָ��Ҫд������
    wire [4: 0] reg_wa4;                 // ��һ��ָ���д�Ĵ�����ַ
    
    wire reg_we1;                        // ��һ��ָ���д�Ĵ����ź�
    wire dm_we1;
    wire sel_rs_sa;
    wire sel_imm_rt;
    wire sel_alu_dm;
    wire [3: 0] alu_ctrl;
    wire [31: 0] imm_ext;
    wire [4: 0] reg_wa1;               // ��һ��ָ���д�Ĵ�����ַ
    
    buffer1 buffer1(
        .clk(clk),
        .rst(rst),
        
        ._inst(im_rd),
//        ._pc_val(pc_val),
        ._reg_we(reg_we4),
        ._reg_wd(reg_wd),
        ._reg_wa(reg_wa4),
        ._pause(pause),
        ._drop(drop),
        
        .reg_we_nxt(reg_we1),
        .dm_we(dm_we1),
        .br_we(br_we),
        .sel_rs_sa(sel_rs_sa),
        .sel_imm_rt(sel_imm_rt),
        .sel_alu_dm(sel_alu_dm),
        .alu_ctrl(alu_ctrl),
        .imm_ext(imm_ext),
        .rs_data(rs_data),
        .rt_data(rt_data),
        .reg_wa_nxt(reg_wa1),
        .inst_addr(inst_addr),
        .pause(pause),
        .drop(drop),
        .output_data(output_data)
//        .sel_4_0(sel_4_0),
//        .pc4(pc4)
    );
    
    // ���㲿��
    wire reg_we2;
    wire sel_alu_dm2;
    wire [31: 0] alu_ans2;
    wire [4: 0] reg_wa2;
    
    buffer2 buffer2(
        .clk(clk),
        .rst(rst),
        
        ._reg_we(reg_we1),
        ._dm_we(dm_we1),
        ._sel_rs_sa(sel_rs_sa),
        ._sel_imm_rt(sel_imm_rt),
        ._sel_alu_dm(sel_alu_dm),
        ._alu_ctrl(alu_ctrl),
        ._imm_ext(imm_ext),
        ._rs_data(rs_data),
        ._rt_data(rt_data),
        ._reg_wa(reg_wa1),
        .pause(pause),
        
        .reg_we_(reg_we2),
        .dm_we_(dm_wen),
        .sel_alu_dm_(sel_alu_dm2),
        .alu_ans(dm_addr),              // alu_ans��dm_addr
        .rt_data_(dm_wd),               // rt_data��dm_wd
        .reg_wa_(reg_wa2)
    );
    
    // ȡ������
    wire reg_we3;
    wire sel_alu_dm3;
    wire [31: 0] alu_ans3;
    wire [4: 0] reg_wa3;
    
    buffer3 buffer3(
        .clk(clk),
        .rst(rst),
        
        ._reg_we(reg_we2),
        ._dm_we(dm_wen),
        ._sel_alu_dm(sel_alu_dm2),
        ._alu_ans(dm_addr),
        ._rt_data(dm_wd),
        ._reg_wa(reg_wa2),
        
        .reg_we_(reg_we3),
        .sel_alu_dm_(sel_alu_dm3),
        .alu_ans_(alu_ans3),
        .reg_wa_(reg_wa3)
    );
    
    // д�ز���
    buffer4 buffer4(
        .clk(clk),
        .rst(rst),
        
        ._reg_we(reg_we3),
        ._sel_alu_dm(sel_alu_dm3),
        ._dm_data(dm_rd),
        ._alu_ans(alu_ans3),
        ._reg_wa(reg_wa3),
        
        .reg_we_(reg_we4),
        .reg_wd(reg_wd),
        .reg_wa_(reg_wa4)
    );
    
endmodule
