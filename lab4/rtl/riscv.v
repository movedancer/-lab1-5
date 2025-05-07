`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/07 10:58:03
// Design Name: 
// Module Name: mips
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module riscv(
	input wire clk,rst,
	output wire[31:0] pc,
	input wire[31:0] instr,
	output wire memwrite,
	output wire[31:0] aluout,writedata,
	input wire[31:0] readdata 
    );
	
	wire memread,alusrc,regsrc,regwrite,branch,pcsrc,zero;
	wire[3:0] alucontrol;

	controller c(instr,zero,memread,
		memwrite,pcsrc,alusrc,regsrc,regwrite,branch,alucontrol);
	datapath dp(clk,rst,memread,pcsrc,alusrc,
		regsrc,regwrite,branch,alucontrol,zero,pc,instr,aluout,writedata,readdata);
	
endmodule
