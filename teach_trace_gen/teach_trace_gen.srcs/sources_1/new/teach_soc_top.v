`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2020/09/08 08:47:20
//////////////////////////////////////////////////////////////////////////////////


module teach_soc_top(
    input           clk,
    input           resetn,
    
    // ----- GPIO -----
    input           mid_btn_key,
    input           left_btn_key, 
    input           right_btn_key,
    input           up_btn_key,
    input           down_btn_key,
    input   [7:0]   switch,
    output  [6:0]   digital_num0,
    output  [6:0]   digital_num1,
    output  [7:0]   digital_cs,
    output  [7:0]   led
);


// clk pll
wire soc_clk;
clk_pll clk_pll(
    // Clock out ports
    .soc_clk(soc_clk),     // output soc_clk
   // Clock in ports
    .clk_in1(clk)          // input clk_in1
);

// cpuָ��洢��
wire        cpu_inst_en;
wire [3 :0] cpu_inst_wen;
wire [31:0] cpu_inst_addr;
wire [31:0] cpu_inst_wdata;
wire [31:0] cpu_inst_rdata;

// cpu����
wire        cpu_data_en;
wire [3 :0] cpu_data_wen;
wire [31:0] cpu_data_addr;
wire [31:0] cpu_data_wdata;
wire [31:0] cpu_data_rdata;

// data_sram����
wire        data_sram_en;
wire [3 :0] data_sram_wen;
wire [31:0] data_sram_addr;
wire [31:0] data_sram_wdata;
wire [31:0] data_sram_rdata;

// confreg����
wire        confreg_en;
wire [3 :0] confreg_wen;
wire [31:0] confreg_addr;
wire [31:0] confreg_wdata;
wire [31:0] confreg_rdata;
    
// cpu    
cpu cpu (
    .clk              (soc_clk   ),
//    .clk              (clk   ),
    .rst              (resetn    ),  //low active

    .im_en     (cpu_inst_en   ),
    .im_wen    (cpu_inst_wen  ),
    .im_addr   (cpu_inst_addr ),
    .im_wd  (cpu_inst_wdata),
    .im_rd  (cpu_inst_rdata),
    
    .dm_en     (cpu_data_en   ),
    .dm_wen    (cpu_data_wen  ),
    .dm_addr   (cpu_data_addr ),
    .dm_wd  (cpu_data_wdata),
    .dm_rd  (cpu_data_rdata)
);

// inst ram
inst_ram inst_ram (
  .clka (soc_clk            ),  // input wire clka
//  .clka              (clk   ),

  .ena  (cpu_inst_en        ),  // input wire ena
  .wea  (cpu_inst_wen       ),  // input wire [3 : 0] wea
  .addra(cpu_inst_addr[17:2]),  // input wire [15 : 0] addra
  .dina (cpu_inst_wdata     ),  // input wire [31 : 0] dina
  .douta(cpu_inst_rdata     )   // output wire [31 : 0] douta
);

// bridge 1x2
bridge_1x2 bridge_1x2 (
    .clk            (soc_clk        ),
//    .clk              (clk   ),
    .reset          (~resetn        ),
    
    .cpu_data_en    (cpu_data_en    ),          // input
    .cpu_data_wen   (cpu_data_wen   ),          // input
    .cpu_data_addr  (cpu_data_addr  ),          // input
    .cpu_data_wdata (cpu_data_wdata ),          // input
    .cpu_data_rdata (cpu_data_rdata ),          // output
    
    .data_sram_en   (data_sram_en   ),          // output
    .data_sram_wen  (data_sram_wen  ),          // output
    .data_sram_addr (data_sram_addr ),          // output
    .data_sram_wdata(data_sram_wdata),          // output
    .data_sram_rdata(data_sram_rdata),          // input
    
    .confreg_en     (confreg_en     ),          // output
    .confreg_wen    (confreg_wen    ),          // output
    .confreg_addr   (confreg_addr   ),          // output
    .confreg_wdata  (confreg_wdata  ),          // output
    .confreg_rdata  (confreg_rdata  )           // input
);

// data ram
data_ram data_ram (
  .clka (soc_clk             ),  // input wire clka
//  .clka              (clk   ),

  .ena  (data_sram_en        ),  // input wire ena
  .wea  (data_sram_wen       ),  // input wire [3 : 0] wea
  .addra(data_sram_addr[13:2]),  // input wire [11 : 0] addra
  .dina (data_sram_wdata     ),  // input wire [31 : 0] dina
  .douta(data_sram_rdata     )   // output wire [31 : 0] douta
);

// confreg
confreg confreg (
    .clk          (soc_clk       ),
//    .clk              (clk   ),

    .rst          (~resetn       ),
    
    .confreg_en   (confreg_en    ),
    .confreg_wen  (confreg_wen   ),
    .confreg_addr (confreg_addr  ),
    .confreg_wdata(confreg_wdata ),
    .confreg_rdata(confreg_rdata ),
    
    .digital_num0 (digital_num0  ),
    .digital_num1 (digital_num1  ),
    .digital_cs   (digital_cs    ),
    .led          (led           ),
    .switch       (switch        ),
    .mid_btn_key  (mid_btn_key   ),
    .left_btn_key (left_btn_key  ),
    .right_btn_key(right_btn_key ),
    .up_btn_key   (up_btn_key    ),
    .down_btn_key (down_btn_key  )
);
    
endmodule