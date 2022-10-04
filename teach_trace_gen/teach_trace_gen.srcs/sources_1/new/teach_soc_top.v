`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2020/09/08 08:47:20
//////////////////////////////////////////////////////////////////////////////////


module teach_soc_top(
    input           clk,
    input           resetn,
    
    // ----- confreg -----
    output  [6:0]   digital_num0,
    output  [7:0]   digital_cs,
    
    // ------- vga -------
    output          hs,
    output          vs,
    output  [3:0]   r,
    output  [3:0]   g,
    output  [3:0]   b
);


//// clk pll
//wire soc_clk;
//clk_pll clk_pll(
//    // Clock out ports
//    .soc_clk(soc_clk),     // output soc_clk
//   // Clock in ports
//    .clk_in1(clk)          // input clk_in1
//);

// cpu指令存储器
wire        cpu_inst_en;
wire [3 :0] cpu_inst_wen;
wire [31:0] cpu_inst_addr;
wire [31:0] cpu_inst_wdata;
wire [31:0] cpu_inst_rdata;

// cpu数据
wire        cpu_data_en;
wire [3 :0] cpu_data_wen;
wire [31:0] cpu_data_addr;
wire [31:0] cpu_data_wdata;
wire [31:0] cpu_data_rdata;

// data_sram控制
wire        data_sram_en;
wire [3 :0] data_sram_wen;
wire [31:0] data_sram_addr;
wire [31:0] data_sram_wdata;
wire [31:0] data_sram_rdata;

// confreg控制
wire        confreg_en;
wire [3 :0] confreg_wen;
wire [31:0] confreg_addr;
wire [31:0] confreg_wdata;
wire [31:0] confreg_rdata;
wire [7 :0] vga_num;
    
// cpu    
cpu cpu(
    .clk(clk),
    .rst(resetn),
    
    .im_rd(cpu_inst_rdata),
    .dm_rd(cpu_data_rdata),
    
    .im_en(cpu_inst_en),
    .im_wen(cpu_inst_wen),
    .im_addr(cpu_inst_addr),
    .im_wd(cpu_inst_wdata),

    .dm_en(cpu_data_en),
    .dm_wen(cpu_data_wen),
    .dm_wd(cpu_data_wdata),
    .dm_addr(cpu_data_addr)
);

//insMem insMem(
//    .clk(clk),
//    .rst(resetn),
    
//    ._addr(cpu_inst_addr),
    
//    .idata(cpu_inst_rdata)
//);

//dataMem dataMem(
//    .clk(clk),
//    .rst(resetn),
    
//    .we(data_sram_wen),
//    ._addr(data_sram_addr),
//    .wdata(data_sram_wdata),
    
//    .rdata(data_sram_rdata)
//);

// inst ram
inst_ram inst_ram (
  .clka (clk            ),  // input wire clka
//  .clka              (clk   ),

  .ena  (cpu_inst_en        ),  // input wire ena
  .wea  (cpu_inst_wen       ),  // input wire [3 : 0] wea
  .addra(cpu_inst_addr[17:2]),  // input wire [15 : 0] addra
  .dina (cpu_inst_wdata     ),  // input wire [31 : 0] dina
  .douta(cpu_inst_rdata     )   // output wire [31 : 0] douta
);

// bridge 1x2
bridge_1x2 bridge_1x2 (
    .clk            (clk        ),
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
  .clka (clk             ),  // input wire clka
//  .clka              (clk   ),

  .ena  (data_sram_en        ),  // input wire ena
  .wea  (data_sram_wen       ),  // input wire [3 : 0] wea
  .addra(data_sram_addr[13:2]),  // input wire [11 : 0] addra
  .dina (data_sram_wdata     ),  // input wire [31 : 0] dina
  .douta(data_sram_rdata     )   // output wire [31 : 0] douta
);

// confreg
confreg confreg (
    .clk          (clk       ),

    .rst          (resetn       ),
    
    .confreg_en   (confreg_en    ),
    .confreg_wen  (confreg_wen   ),
    .confreg_addr (confreg_addr  ),
    .confreg_wdata(confreg_wdata ),
    .confreg_rdata(confreg_rdata ),
    
    .digital_num0 (digital_num0  ),
    .digital_cs   (digital_cs    ),
    
    .vga_num      (vga_num       )
);

// vga
vga vga(
    .clk(clk),
    .rst(resetn),
    
    .vga_num(vga_num),
    
    .hs(hs),
    .vs(vs),
    .r(r),
    .g(g),
    .b(b)
);
    
endmodule
