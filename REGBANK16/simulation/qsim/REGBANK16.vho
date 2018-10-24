-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "10/23/2018 22:14:58"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	REGBANK16 IS
    PORT (
	ReadReg1 : IN std_logic_vector(3 DOWNTO 0);
	ReadReg2 : IN std_logic_vector(3 DOWNTO 0);
	WriteReg : IN std_logic_vector(3 DOWNTO 0);
	WriteData : IN std_logic_vector(15 DOWNTO 0);
	RegWrite : IN std_logic;
	ReadData1 : OUT std_logic_vector(15 DOWNTO 0);
	ReadData2 : OUT std_logic_vector(15 DOWNTO 0)
	);
END REGBANK16;

ARCHITECTURE structure OF REGBANK16 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ReadReg1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ReadReg2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_WriteReg : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_WriteData : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_RegWrite : std_logic;
SIGNAL ww_ReadData1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ReadData2 : std_logic_vector(15 DOWNTO 0);
SIGNAL \ReadData1[0]~output_o\ : std_logic;
SIGNAL \ReadData1[1]~output_o\ : std_logic;
SIGNAL \ReadData1[2]~output_o\ : std_logic;
SIGNAL \ReadData1[3]~output_o\ : std_logic;
SIGNAL \ReadData1[4]~output_o\ : std_logic;
SIGNAL \ReadData1[5]~output_o\ : std_logic;
SIGNAL \ReadData1[6]~output_o\ : std_logic;
SIGNAL \ReadData1[7]~output_o\ : std_logic;
SIGNAL \ReadData1[8]~output_o\ : std_logic;
SIGNAL \ReadData1[9]~output_o\ : std_logic;
SIGNAL \ReadData1[10]~output_o\ : std_logic;
SIGNAL \ReadData1[11]~output_o\ : std_logic;
SIGNAL \ReadData1[12]~output_o\ : std_logic;
SIGNAL \ReadData1[13]~output_o\ : std_logic;
SIGNAL \ReadData1[14]~output_o\ : std_logic;
SIGNAL \ReadData1[15]~output_o\ : std_logic;
SIGNAL \ReadData2[0]~output_o\ : std_logic;
SIGNAL \ReadData2[1]~output_o\ : std_logic;
SIGNAL \ReadData2[2]~output_o\ : std_logic;
SIGNAL \ReadData2[3]~output_o\ : std_logic;
SIGNAL \ReadData2[4]~output_o\ : std_logic;
SIGNAL \ReadData2[5]~output_o\ : std_logic;
SIGNAL \ReadData2[6]~output_o\ : std_logic;
SIGNAL \ReadData2[7]~output_o\ : std_logic;
SIGNAL \ReadData2[8]~output_o\ : std_logic;
SIGNAL \ReadData2[9]~output_o\ : std_logic;
SIGNAL \ReadData2[10]~output_o\ : std_logic;
SIGNAL \ReadData2[11]~output_o\ : std_logic;
SIGNAL \ReadData2[12]~output_o\ : std_logic;
SIGNAL \ReadData2[13]~output_o\ : std_logic;
SIGNAL \ReadData2[14]~output_o\ : std_logic;
SIGNAL \ReadData2[15]~output_o\ : std_logic;
SIGNAL \RegWrite~input_o\ : std_logic;
SIGNAL \WriteData[0]~input_o\ : std_logic;
SIGNAL \WriteReg[0]~input_o\ : std_logic;
SIGNAL \WriteReg[1]~input_o\ : std_logic;
SIGNAL \WriteReg[2]~input_o\ : std_logic;
SIGNAL \WriteReg[3]~input_o\ : std_logic;
SIGNAL \ARRAYREG~437_combout\ : std_logic;
SIGNAL \ARRAYREG~21_q\ : std_logic;
SIGNAL \ARRAYREG~438_combout\ : std_logic;
SIGNAL \ARRAYREG~37_q\ : std_logic;
SIGNAL \ARRAYREG~439_combout\ : std_logic;
SIGNAL \ARRAYREG~53_q\ : std_logic;
SIGNAL \ARRAYREG~440_combout\ : std_logic;
SIGNAL \ARRAYREG~69_q\ : std_logic;
SIGNAL \ReadReg1[0]~input_o\ : std_logic;
SIGNAL \ReadReg1[1]~input_o\ : std_logic;
SIGNAL \ARRAYREG~277_combout\ : std_logic;
SIGNAL \ARRAYREG~441_combout\ : std_logic;
SIGNAL \ARRAYREG~85_q\ : std_logic;
SIGNAL \ARRAYREG~442_combout\ : std_logic;
SIGNAL \ARRAYREG~101_q\ : std_logic;
SIGNAL \ARRAYREG~443_combout\ : std_logic;
SIGNAL \ARRAYREG~117_q\ : std_logic;
SIGNAL \ARRAYREG~444_combout\ : std_logic;
SIGNAL \ARRAYREG~133_q\ : std_logic;
SIGNAL \ARRAYREG~278_combout\ : std_logic;
SIGNAL \ARRAYREG~445_combout\ : std_logic;
SIGNAL \ARRAYREG~149_q\ : std_logic;
SIGNAL \ARRAYREG~446_combout\ : std_logic;
SIGNAL \ARRAYREG~165_q\ : std_logic;
SIGNAL \ARRAYREG~447_combout\ : std_logic;
SIGNAL \ARRAYREG~181_q\ : std_logic;
SIGNAL \ARRAYREG~448_combout\ : std_logic;
SIGNAL \ARRAYREG~197_q\ : std_logic;
SIGNAL \ARRAYREG~279_combout\ : std_logic;
SIGNAL \ARRAYREG~449_combout\ : std_logic;
SIGNAL \ARRAYREG~213_q\ : std_logic;
SIGNAL \ARRAYREG~450_combout\ : std_logic;
SIGNAL \ARRAYREG~229_q\ : std_logic;
SIGNAL \ARRAYREG~451_combout\ : std_logic;
SIGNAL \ARRAYREG~245_q\ : std_logic;
SIGNAL \ARRAYREG~452_combout\ : std_logic;
SIGNAL \ARRAYREG~261_q\ : std_logic;
SIGNAL \ARRAYREG~280_combout\ : std_logic;
SIGNAL \ReadReg1[2]~input_o\ : std_logic;
SIGNAL \ReadReg1[3]~input_o\ : std_logic;
SIGNAL \ARRAYREG~281_combout\ : std_logic;
SIGNAL \WriteData[1]~input_o\ : std_logic;
SIGNAL \ARRAYREG~22_q\ : std_logic;
SIGNAL \ARRAYREG~86_q\ : std_logic;
SIGNAL \ARRAYREG~150_q\ : std_logic;
SIGNAL \ARRAYREG~214_q\ : std_logic;
SIGNAL \ARRAYREG~282_combout\ : std_logic;
SIGNAL \ARRAYREG~38_q\ : std_logic;
SIGNAL \ARRAYREG~102_q\ : std_logic;
SIGNAL \ARRAYREG~166_q\ : std_logic;
SIGNAL \ARRAYREG~230_q\ : std_logic;
SIGNAL \ARRAYREG~283_combout\ : std_logic;
SIGNAL \ARRAYREG~54_q\ : std_logic;
SIGNAL \ARRAYREG~118_q\ : std_logic;
SIGNAL \ARRAYREG~182_q\ : std_logic;
SIGNAL \ARRAYREG~246_q\ : std_logic;
SIGNAL \ARRAYREG~284_combout\ : std_logic;
SIGNAL \ARRAYREG~70_q\ : std_logic;
SIGNAL \ARRAYREG~134_q\ : std_logic;
SIGNAL \ARRAYREG~198_q\ : std_logic;
SIGNAL \ARRAYREG~262_q\ : std_logic;
SIGNAL \ARRAYREG~285_combout\ : std_logic;
SIGNAL \ARRAYREG~286_combout\ : std_logic;
SIGNAL \WriteData[2]~input_o\ : std_logic;
SIGNAL \ARRAYREG~23_q\ : std_logic;
SIGNAL \ARRAYREG~39_q\ : std_logic;
SIGNAL \ARRAYREG~55_q\ : std_logic;
SIGNAL \ARRAYREG~71_q\ : std_logic;
SIGNAL \ARRAYREG~287_combout\ : std_logic;
SIGNAL \ARRAYREG~87_q\ : std_logic;
SIGNAL \ARRAYREG~103_q\ : std_logic;
SIGNAL \ARRAYREG~119_q\ : std_logic;
SIGNAL \ARRAYREG~135_q\ : std_logic;
SIGNAL \ARRAYREG~288_combout\ : std_logic;
SIGNAL \ARRAYREG~151_q\ : std_logic;
SIGNAL \ARRAYREG~167_q\ : std_logic;
SIGNAL \ARRAYREG~183_q\ : std_logic;
SIGNAL \ARRAYREG~199_q\ : std_logic;
SIGNAL \ARRAYREG~289_combout\ : std_logic;
SIGNAL \ARRAYREG~215_q\ : std_logic;
SIGNAL \ARRAYREG~231_q\ : std_logic;
SIGNAL \ARRAYREG~247_q\ : std_logic;
SIGNAL \ARRAYREG~263_q\ : std_logic;
SIGNAL \ARRAYREG~290_combout\ : std_logic;
SIGNAL \ARRAYREG~291_combout\ : std_logic;
SIGNAL \WriteData[3]~input_o\ : std_logic;
SIGNAL \ARRAYREG~24_q\ : std_logic;
SIGNAL \ARRAYREG~88_q\ : std_logic;
SIGNAL \ARRAYREG~152_q\ : std_logic;
SIGNAL \ARRAYREG~216_q\ : std_logic;
SIGNAL \ARRAYREG~292_combout\ : std_logic;
SIGNAL \ARRAYREG~40_q\ : std_logic;
SIGNAL \ARRAYREG~104_q\ : std_logic;
SIGNAL \ARRAYREG~168_q\ : std_logic;
SIGNAL \ARRAYREG~232_q\ : std_logic;
SIGNAL \ARRAYREG~293_combout\ : std_logic;
SIGNAL \ARRAYREG~56_q\ : std_logic;
SIGNAL \ARRAYREG~120_q\ : std_logic;
SIGNAL \ARRAYREG~184_q\ : std_logic;
SIGNAL \ARRAYREG~248_q\ : std_logic;
SIGNAL \ARRAYREG~294_combout\ : std_logic;
SIGNAL \ARRAYREG~72_q\ : std_logic;
SIGNAL \ARRAYREG~136_q\ : std_logic;
SIGNAL \ARRAYREG~200_q\ : std_logic;
SIGNAL \ARRAYREG~264_q\ : std_logic;
SIGNAL \ARRAYREG~295_combout\ : std_logic;
SIGNAL \ARRAYREG~296_combout\ : std_logic;
SIGNAL \WriteData[4]~input_o\ : std_logic;
SIGNAL \ARRAYREG~25_q\ : std_logic;
SIGNAL \ARRAYREG~41_q\ : std_logic;
SIGNAL \ARRAYREG~57_q\ : std_logic;
SIGNAL \ARRAYREG~73_q\ : std_logic;
SIGNAL \ARRAYREG~297_combout\ : std_logic;
SIGNAL \ARRAYREG~89_q\ : std_logic;
SIGNAL \ARRAYREG~105_q\ : std_logic;
SIGNAL \ARRAYREG~121_q\ : std_logic;
SIGNAL \ARRAYREG~137_q\ : std_logic;
SIGNAL \ARRAYREG~298_combout\ : std_logic;
SIGNAL \ARRAYREG~153_q\ : std_logic;
SIGNAL \ARRAYREG~169_q\ : std_logic;
SIGNAL \ARRAYREG~185_q\ : std_logic;
SIGNAL \ARRAYREG~201_q\ : std_logic;
SIGNAL \ARRAYREG~299_combout\ : std_logic;
SIGNAL \ARRAYREG~217_q\ : std_logic;
SIGNAL \ARRAYREG~233_q\ : std_logic;
SIGNAL \ARRAYREG~249_q\ : std_logic;
SIGNAL \ARRAYREG~265_q\ : std_logic;
SIGNAL \ARRAYREG~300_combout\ : std_logic;
SIGNAL \ARRAYREG~301_combout\ : std_logic;
SIGNAL \WriteData[5]~input_o\ : std_logic;
SIGNAL \ARRAYREG~26_q\ : std_logic;
SIGNAL \ARRAYREG~90_q\ : std_logic;
SIGNAL \ARRAYREG~154_q\ : std_logic;
SIGNAL \ARRAYREG~218_q\ : std_logic;
SIGNAL \ARRAYREG~302_combout\ : std_logic;
SIGNAL \ARRAYREG~42_q\ : std_logic;
SIGNAL \ARRAYREG~106_q\ : std_logic;
SIGNAL \ARRAYREG~170_q\ : std_logic;
SIGNAL \ARRAYREG~234_q\ : std_logic;
SIGNAL \ARRAYREG~303_combout\ : std_logic;
SIGNAL \ARRAYREG~58_q\ : std_logic;
SIGNAL \ARRAYREG~122_q\ : std_logic;
SIGNAL \ARRAYREG~186_q\ : std_logic;
SIGNAL \ARRAYREG~250_q\ : std_logic;
SIGNAL \ARRAYREG~304_combout\ : std_logic;
SIGNAL \ARRAYREG~74_q\ : std_logic;
SIGNAL \ARRAYREG~138_q\ : std_logic;
SIGNAL \ARRAYREG~202_q\ : std_logic;
SIGNAL \ARRAYREG~266_q\ : std_logic;
SIGNAL \ARRAYREG~305_combout\ : std_logic;
SIGNAL \ARRAYREG~306_combout\ : std_logic;
SIGNAL \WriteData[6]~input_o\ : std_logic;
SIGNAL \ARRAYREG~27_q\ : std_logic;
SIGNAL \ARRAYREG~43_q\ : std_logic;
SIGNAL \ARRAYREG~59_q\ : std_logic;
SIGNAL \ARRAYREG~75_q\ : std_logic;
SIGNAL \ARRAYREG~307_combout\ : std_logic;
SIGNAL \ARRAYREG~91_q\ : std_logic;
SIGNAL \ARRAYREG~107_q\ : std_logic;
SIGNAL \ARRAYREG~123_q\ : std_logic;
SIGNAL \ARRAYREG~139_q\ : std_logic;
SIGNAL \ARRAYREG~308_combout\ : std_logic;
SIGNAL \ARRAYREG~155_q\ : std_logic;
SIGNAL \ARRAYREG~171_q\ : std_logic;
SIGNAL \ARRAYREG~187_q\ : std_logic;
SIGNAL \ARRAYREG~203_q\ : std_logic;
SIGNAL \ARRAYREG~309_combout\ : std_logic;
SIGNAL \ARRAYREG~219_q\ : std_logic;
SIGNAL \ARRAYREG~235_q\ : std_logic;
SIGNAL \ARRAYREG~251_q\ : std_logic;
SIGNAL \ARRAYREG~267_q\ : std_logic;
SIGNAL \ARRAYREG~310_combout\ : std_logic;
SIGNAL \ARRAYREG~311_combout\ : std_logic;
SIGNAL \WriteData[7]~input_o\ : std_logic;
SIGNAL \ARRAYREG~28_q\ : std_logic;
SIGNAL \ARRAYREG~92_q\ : std_logic;
SIGNAL \ARRAYREG~156_q\ : std_logic;
SIGNAL \ARRAYREG~220_q\ : std_logic;
SIGNAL \ARRAYREG~312_combout\ : std_logic;
SIGNAL \ARRAYREG~44_q\ : std_logic;
SIGNAL \ARRAYREG~108_q\ : std_logic;
SIGNAL \ARRAYREG~172_q\ : std_logic;
SIGNAL \ARRAYREG~236_q\ : std_logic;
SIGNAL \ARRAYREG~313_combout\ : std_logic;
SIGNAL \ARRAYREG~60_q\ : std_logic;
SIGNAL \ARRAYREG~124_q\ : std_logic;
SIGNAL \ARRAYREG~188_q\ : std_logic;
SIGNAL \ARRAYREG~252_q\ : std_logic;
SIGNAL \ARRAYREG~314_combout\ : std_logic;
SIGNAL \ARRAYREG~76_q\ : std_logic;
SIGNAL \ARRAYREG~140_q\ : std_logic;
SIGNAL \ARRAYREG~204_q\ : std_logic;
SIGNAL \ARRAYREG~268_q\ : std_logic;
SIGNAL \ARRAYREG~315_combout\ : std_logic;
SIGNAL \ARRAYREG~316_combout\ : std_logic;
SIGNAL \WriteData[8]~input_o\ : std_logic;
SIGNAL \ARRAYREG~29_q\ : std_logic;
SIGNAL \ARRAYREG~45_q\ : std_logic;
SIGNAL \ARRAYREG~61_q\ : std_logic;
SIGNAL \ARRAYREG~77_q\ : std_logic;
SIGNAL \ARRAYREG~317_combout\ : std_logic;
SIGNAL \ARRAYREG~93_q\ : std_logic;
SIGNAL \ARRAYREG~109_q\ : std_logic;
SIGNAL \ARRAYREG~125_q\ : std_logic;
SIGNAL \ARRAYREG~141_q\ : std_logic;
SIGNAL \ARRAYREG~318_combout\ : std_logic;
SIGNAL \ARRAYREG~157_q\ : std_logic;
SIGNAL \ARRAYREG~173_q\ : std_logic;
SIGNAL \ARRAYREG~189_q\ : std_logic;
SIGNAL \ARRAYREG~205_q\ : std_logic;
SIGNAL \ARRAYREG~319_combout\ : std_logic;
SIGNAL \ARRAYREG~221_q\ : std_logic;
SIGNAL \ARRAYREG~237_q\ : std_logic;
SIGNAL \ARRAYREG~253_q\ : std_logic;
SIGNAL \ARRAYREG~269_q\ : std_logic;
SIGNAL \ARRAYREG~320_combout\ : std_logic;
SIGNAL \ARRAYREG~321_combout\ : std_logic;
SIGNAL \WriteData[9]~input_o\ : std_logic;
SIGNAL \ARRAYREG~30_q\ : std_logic;
SIGNAL \ARRAYREG~94_q\ : std_logic;
SIGNAL \ARRAYREG~158_q\ : std_logic;
SIGNAL \ARRAYREG~222_q\ : std_logic;
SIGNAL \ARRAYREG~322_combout\ : std_logic;
SIGNAL \ARRAYREG~46_q\ : std_logic;
SIGNAL \ARRAYREG~110_q\ : std_logic;
SIGNAL \ARRAYREG~174_q\ : std_logic;
SIGNAL \ARRAYREG~238_q\ : std_logic;
SIGNAL \ARRAYREG~323_combout\ : std_logic;
SIGNAL \ARRAYREG~62_q\ : std_logic;
SIGNAL \ARRAYREG~126_q\ : std_logic;
SIGNAL \ARRAYREG~190_q\ : std_logic;
SIGNAL \ARRAYREG~254_q\ : std_logic;
SIGNAL \ARRAYREG~324_combout\ : std_logic;
SIGNAL \ARRAYREG~78_q\ : std_logic;
SIGNAL \ARRAYREG~142_q\ : std_logic;
SIGNAL \ARRAYREG~206_q\ : std_logic;
SIGNAL \ARRAYREG~270_q\ : std_logic;
SIGNAL \ARRAYREG~325_combout\ : std_logic;
SIGNAL \ARRAYREG~326_combout\ : std_logic;
SIGNAL \WriteData[10]~input_o\ : std_logic;
SIGNAL \ARRAYREG~31_q\ : std_logic;
SIGNAL \ARRAYREG~47_q\ : std_logic;
SIGNAL \ARRAYREG~63_q\ : std_logic;
SIGNAL \ARRAYREG~79_q\ : std_logic;
SIGNAL \ARRAYREG~327_combout\ : std_logic;
SIGNAL \ARRAYREG~95_q\ : std_logic;
SIGNAL \ARRAYREG~111_q\ : std_logic;
SIGNAL \ARRAYREG~127_q\ : std_logic;
SIGNAL \ARRAYREG~143_q\ : std_logic;
SIGNAL \ARRAYREG~328_combout\ : std_logic;
SIGNAL \ARRAYREG~159_q\ : std_logic;
SIGNAL \ARRAYREG~175_q\ : std_logic;
SIGNAL \ARRAYREG~191_q\ : std_logic;
SIGNAL \ARRAYREG~207_q\ : std_logic;
SIGNAL \ARRAYREG~329_combout\ : std_logic;
SIGNAL \ARRAYREG~223_q\ : std_logic;
SIGNAL \ARRAYREG~239_q\ : std_logic;
SIGNAL \ARRAYREG~255_q\ : std_logic;
SIGNAL \ARRAYREG~271_q\ : std_logic;
SIGNAL \ARRAYREG~330_combout\ : std_logic;
SIGNAL \ARRAYREG~331_combout\ : std_logic;
SIGNAL \WriteData[11]~input_o\ : std_logic;
SIGNAL \ARRAYREG~32_q\ : std_logic;
SIGNAL \ARRAYREG~96_q\ : std_logic;
SIGNAL \ARRAYREG~160_q\ : std_logic;
SIGNAL \ARRAYREG~224_q\ : std_logic;
SIGNAL \ARRAYREG~332_combout\ : std_logic;
SIGNAL \ARRAYREG~48_q\ : std_logic;
SIGNAL \ARRAYREG~112_q\ : std_logic;
SIGNAL \ARRAYREG~176_q\ : std_logic;
SIGNAL \ARRAYREG~240_q\ : std_logic;
SIGNAL \ARRAYREG~333_combout\ : std_logic;
SIGNAL \ARRAYREG~64_q\ : std_logic;
SIGNAL \ARRAYREG~128_q\ : std_logic;
SIGNAL \ARRAYREG~192_q\ : std_logic;
SIGNAL \ARRAYREG~256_q\ : std_logic;
SIGNAL \ARRAYREG~334_combout\ : std_logic;
SIGNAL \ARRAYREG~80_q\ : std_logic;
SIGNAL \ARRAYREG~144_q\ : std_logic;
SIGNAL \ARRAYREG~208_q\ : std_logic;
SIGNAL \ARRAYREG~272_q\ : std_logic;
SIGNAL \ARRAYREG~335_combout\ : std_logic;
SIGNAL \ARRAYREG~336_combout\ : std_logic;
SIGNAL \WriteData[12]~input_o\ : std_logic;
SIGNAL \ARRAYREG~33_q\ : std_logic;
SIGNAL \ARRAYREG~49_q\ : std_logic;
SIGNAL \ARRAYREG~65_q\ : std_logic;
SIGNAL \ARRAYREG~81_q\ : std_logic;
SIGNAL \ARRAYREG~337_combout\ : std_logic;
SIGNAL \ARRAYREG~97_q\ : std_logic;
SIGNAL \ARRAYREG~113_q\ : std_logic;
SIGNAL \ARRAYREG~129_q\ : std_logic;
SIGNAL \ARRAYREG~145_q\ : std_logic;
SIGNAL \ARRAYREG~338_combout\ : std_logic;
SIGNAL \ARRAYREG~161_q\ : std_logic;
SIGNAL \ARRAYREG~177_q\ : std_logic;
SIGNAL \ARRAYREG~193_q\ : std_logic;
SIGNAL \ARRAYREG~209_q\ : std_logic;
SIGNAL \ARRAYREG~339_combout\ : std_logic;
SIGNAL \ARRAYREG~225_q\ : std_logic;
SIGNAL \ARRAYREG~241_q\ : std_logic;
SIGNAL \ARRAYREG~257_q\ : std_logic;
SIGNAL \ARRAYREG~273_q\ : std_logic;
SIGNAL \ARRAYREG~340_combout\ : std_logic;
SIGNAL \ARRAYREG~341_combout\ : std_logic;
SIGNAL \WriteData[13]~input_o\ : std_logic;
SIGNAL \ARRAYREG~34_q\ : std_logic;
SIGNAL \ARRAYREG~98_q\ : std_logic;
SIGNAL \ARRAYREG~162_q\ : std_logic;
SIGNAL \ARRAYREG~226_q\ : std_logic;
SIGNAL \ARRAYREG~342_combout\ : std_logic;
SIGNAL \ARRAYREG~50_q\ : std_logic;
SIGNAL \ARRAYREG~114_q\ : std_logic;
SIGNAL \ARRAYREG~178_q\ : std_logic;
SIGNAL \ARRAYREG~242_q\ : std_logic;
SIGNAL \ARRAYREG~343_combout\ : std_logic;
SIGNAL \ARRAYREG~66_q\ : std_logic;
SIGNAL \ARRAYREG~130_q\ : std_logic;
SIGNAL \ARRAYREG~194_q\ : std_logic;
SIGNAL \ARRAYREG~258_q\ : std_logic;
SIGNAL \ARRAYREG~344_combout\ : std_logic;
SIGNAL \ARRAYREG~82_q\ : std_logic;
SIGNAL \ARRAYREG~146_q\ : std_logic;
SIGNAL \ARRAYREG~210_q\ : std_logic;
SIGNAL \ARRAYREG~274_q\ : std_logic;
SIGNAL \ARRAYREG~345_combout\ : std_logic;
SIGNAL \ARRAYREG~346_combout\ : std_logic;
SIGNAL \WriteData[14]~input_o\ : std_logic;
SIGNAL \ARRAYREG~35_q\ : std_logic;
SIGNAL \ARRAYREG~51_q\ : std_logic;
SIGNAL \ARRAYREG~67_q\ : std_logic;
SIGNAL \ARRAYREG~83_q\ : std_logic;
SIGNAL \ARRAYREG~347_combout\ : std_logic;
SIGNAL \ARRAYREG~99_q\ : std_logic;
SIGNAL \ARRAYREG~115_q\ : std_logic;
SIGNAL \ARRAYREG~131_q\ : std_logic;
SIGNAL \ARRAYREG~147_q\ : std_logic;
SIGNAL \ARRAYREG~348_combout\ : std_logic;
SIGNAL \ARRAYREG~163_q\ : std_logic;
SIGNAL \ARRAYREG~179_q\ : std_logic;
SIGNAL \ARRAYREG~195_q\ : std_logic;
SIGNAL \ARRAYREG~211_q\ : std_logic;
SIGNAL \ARRAYREG~349_combout\ : std_logic;
SIGNAL \ARRAYREG~227_q\ : std_logic;
SIGNAL \ARRAYREG~243_q\ : std_logic;
SIGNAL \ARRAYREG~259_q\ : std_logic;
SIGNAL \ARRAYREG~275_q\ : std_logic;
SIGNAL \ARRAYREG~350_combout\ : std_logic;
SIGNAL \ARRAYREG~351_combout\ : std_logic;
SIGNAL \WriteData[15]~input_o\ : std_logic;
SIGNAL \ARRAYREG~36_q\ : std_logic;
SIGNAL \ARRAYREG~100_q\ : std_logic;
SIGNAL \ARRAYREG~164_q\ : std_logic;
SIGNAL \ARRAYREG~228_q\ : std_logic;
SIGNAL \ARRAYREG~352_combout\ : std_logic;
SIGNAL \ARRAYREG~52_q\ : std_logic;
SIGNAL \ARRAYREG~116_q\ : std_logic;
SIGNAL \ARRAYREG~180_q\ : std_logic;
SIGNAL \ARRAYREG~244_q\ : std_logic;
SIGNAL \ARRAYREG~353_combout\ : std_logic;
SIGNAL \ARRAYREG~68_q\ : std_logic;
SIGNAL \ARRAYREG~132_q\ : std_logic;
SIGNAL \ARRAYREG~196_q\ : std_logic;
SIGNAL \ARRAYREG~260_q\ : std_logic;
SIGNAL \ARRAYREG~354_combout\ : std_logic;
SIGNAL \ARRAYREG~84_q\ : std_logic;
SIGNAL \ARRAYREG~148_q\ : std_logic;
SIGNAL \ARRAYREG~212_q\ : std_logic;
SIGNAL \ARRAYREG~276_q\ : std_logic;
SIGNAL \ARRAYREG~355_combout\ : std_logic;
SIGNAL \ARRAYREG~356_combout\ : std_logic;
SIGNAL \ReadReg2[0]~input_o\ : std_logic;
SIGNAL \ReadReg2[1]~input_o\ : std_logic;
SIGNAL \ARRAYREG~357_combout\ : std_logic;
SIGNAL \ARRAYREG~358_combout\ : std_logic;
SIGNAL \ARRAYREG~359_combout\ : std_logic;
SIGNAL \ARRAYREG~360_combout\ : std_logic;
SIGNAL \ReadReg2[2]~input_o\ : std_logic;
SIGNAL \ReadReg2[3]~input_o\ : std_logic;
SIGNAL \ARRAYREG~361_combout\ : std_logic;
SIGNAL \ARRAYREG~362_combout\ : std_logic;
SIGNAL \ARRAYREG~363_combout\ : std_logic;
SIGNAL \ARRAYREG~364_combout\ : std_logic;
SIGNAL \ARRAYREG~365_combout\ : std_logic;
SIGNAL \ARRAYREG~366_combout\ : std_logic;
SIGNAL \ARRAYREG~367_combout\ : std_logic;
SIGNAL \ARRAYREG~368_combout\ : std_logic;
SIGNAL \ARRAYREG~369_combout\ : std_logic;
SIGNAL \ARRAYREG~370_combout\ : std_logic;
SIGNAL \ARRAYREG~371_combout\ : std_logic;
SIGNAL \ARRAYREG~372_combout\ : std_logic;
SIGNAL \ARRAYREG~373_combout\ : std_logic;
SIGNAL \ARRAYREG~374_combout\ : std_logic;
SIGNAL \ARRAYREG~375_combout\ : std_logic;
SIGNAL \ARRAYREG~376_combout\ : std_logic;
SIGNAL \ARRAYREG~377_combout\ : std_logic;
SIGNAL \ARRAYREG~378_combout\ : std_logic;
SIGNAL \ARRAYREG~379_combout\ : std_logic;
SIGNAL \ARRAYREG~380_combout\ : std_logic;
SIGNAL \ARRAYREG~381_combout\ : std_logic;
SIGNAL \ARRAYREG~382_combout\ : std_logic;
SIGNAL \ARRAYREG~383_combout\ : std_logic;
SIGNAL \ARRAYREG~384_combout\ : std_logic;
SIGNAL \ARRAYREG~385_combout\ : std_logic;
SIGNAL \ARRAYREG~386_combout\ : std_logic;
SIGNAL \ARRAYREG~387_combout\ : std_logic;
SIGNAL \ARRAYREG~388_combout\ : std_logic;
SIGNAL \ARRAYREG~389_combout\ : std_logic;
SIGNAL \ARRAYREG~390_combout\ : std_logic;
SIGNAL \ARRAYREG~391_combout\ : std_logic;
SIGNAL \ARRAYREG~392_combout\ : std_logic;
SIGNAL \ARRAYREG~393_combout\ : std_logic;
SIGNAL \ARRAYREG~394_combout\ : std_logic;
SIGNAL \ARRAYREG~395_combout\ : std_logic;
SIGNAL \ARRAYREG~396_combout\ : std_logic;
SIGNAL \ARRAYREG~397_combout\ : std_logic;
SIGNAL \ARRAYREG~398_combout\ : std_logic;
SIGNAL \ARRAYREG~399_combout\ : std_logic;
SIGNAL \ARRAYREG~400_combout\ : std_logic;
SIGNAL \ARRAYREG~401_combout\ : std_logic;
SIGNAL \ARRAYREG~402_combout\ : std_logic;
SIGNAL \ARRAYREG~403_combout\ : std_logic;
SIGNAL \ARRAYREG~404_combout\ : std_logic;
SIGNAL \ARRAYREG~405_combout\ : std_logic;
SIGNAL \ARRAYREG~406_combout\ : std_logic;
SIGNAL \ARRAYREG~407_combout\ : std_logic;
SIGNAL \ARRAYREG~408_combout\ : std_logic;
SIGNAL \ARRAYREG~409_combout\ : std_logic;
SIGNAL \ARRAYREG~410_combout\ : std_logic;
SIGNAL \ARRAYREG~411_combout\ : std_logic;
SIGNAL \ARRAYREG~412_combout\ : std_logic;
SIGNAL \ARRAYREG~413_combout\ : std_logic;
SIGNAL \ARRAYREG~414_combout\ : std_logic;
SIGNAL \ARRAYREG~415_combout\ : std_logic;
SIGNAL \ARRAYREG~416_combout\ : std_logic;
SIGNAL \ARRAYREG~417_combout\ : std_logic;
SIGNAL \ARRAYREG~418_combout\ : std_logic;
SIGNAL \ARRAYREG~419_combout\ : std_logic;
SIGNAL \ARRAYREG~420_combout\ : std_logic;
SIGNAL \ARRAYREG~421_combout\ : std_logic;
SIGNAL \ARRAYREG~422_combout\ : std_logic;
SIGNAL \ARRAYREG~423_combout\ : std_logic;
SIGNAL \ARRAYREG~424_combout\ : std_logic;
SIGNAL \ARRAYREG~425_combout\ : std_logic;
SIGNAL \ARRAYREG~426_combout\ : std_logic;
SIGNAL \ARRAYREG~427_combout\ : std_logic;
SIGNAL \ARRAYREG~428_combout\ : std_logic;
SIGNAL \ARRAYREG~429_combout\ : std_logic;
SIGNAL \ARRAYREG~430_combout\ : std_logic;
SIGNAL \ARRAYREG~431_combout\ : std_logic;
SIGNAL \ARRAYREG~432_combout\ : std_logic;
SIGNAL \ARRAYREG~433_combout\ : std_logic;
SIGNAL \ARRAYREG~434_combout\ : std_logic;
SIGNAL \ARRAYREG~435_combout\ : std_logic;
SIGNAL \ARRAYREG~436_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~201_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~185_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~169_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~153_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~298_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~137_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~121_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~105_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~89_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~297_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~73_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~57_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~41_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~25_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~295_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~264_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~200_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~136_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~72_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~294_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~248_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~184_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~120_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~56_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~293_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~232_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~168_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~104_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~40_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~292_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~216_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~152_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~88_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~24_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~290_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~263_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~247_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~231_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~215_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~289_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~199_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~183_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~167_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~151_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~288_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~135_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~119_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~103_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~87_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~287_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~71_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~55_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~39_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~23_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~285_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~262_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~198_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~134_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~70_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~284_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~246_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~182_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~118_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~54_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~283_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~230_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~166_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~102_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~38_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~282_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~214_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~150_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~86_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~22_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~280_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~261_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~245_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~229_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~213_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~279_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~197_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~181_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~165_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~149_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~278_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~133_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~117_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~101_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~85_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~277_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~69_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~53_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~37_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~21_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~329_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~207_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~191_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~175_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~159_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~328_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~143_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~127_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~111_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~95_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~327_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~79_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~63_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~47_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~31_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~325_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~270_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~206_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~142_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~78_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~324_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~254_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~190_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~126_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~62_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~323_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~238_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~174_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~110_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~46_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~322_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~222_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~158_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~94_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~30_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~320_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~269_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~253_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~237_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~221_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~319_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~205_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~189_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~173_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~157_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~318_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~141_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~125_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~109_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~93_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~317_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~77_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~61_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~45_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~29_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~315_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~268_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~204_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~140_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~76_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~314_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~252_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~188_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~124_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~60_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~313_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~236_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~172_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~108_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~44_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~312_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~220_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~156_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~92_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~28_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~310_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~267_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~251_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~235_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~219_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~309_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~203_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~187_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~171_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~155_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~308_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~139_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~123_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~107_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~91_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~307_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~75_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~59_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~43_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~27_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~305_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~266_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~202_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~138_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~74_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~304_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~250_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~186_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~122_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~58_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~303_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~234_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~170_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~106_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~42_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~302_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~218_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~154_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~90_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~26_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~300_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~265_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~249_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~233_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~217_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~299_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~372_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~370_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~369_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~368_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~367_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~365_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~364_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~363_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~362_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~360_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~359_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~358_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~357_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~355_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~276_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~212_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~148_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~84_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~354_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~260_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~196_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~132_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~68_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~353_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~244_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~180_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~116_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~52_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~352_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~228_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~164_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~100_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~36_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~350_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~275_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~259_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~243_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~227_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~349_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~211_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~195_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~179_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~163_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~348_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~147_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~131_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~115_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~99_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~347_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~83_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~67_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~51_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~35_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~345_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~274_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~210_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~146_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~82_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~344_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~258_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~194_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~130_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~66_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~343_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~242_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~178_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~114_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~50_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~342_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~226_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~162_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~98_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~34_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~340_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~273_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~257_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~241_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~225_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~339_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~209_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~193_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~177_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~161_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~338_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~145_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~129_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~113_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~97_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~337_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~81_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~65_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~49_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~33_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~335_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~272_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~208_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~144_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~80_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~334_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~256_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~192_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~128_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~64_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~333_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~240_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~176_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~112_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~48_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~332_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~224_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~160_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~96_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~32_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~330_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~271_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~255_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~239_q\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~223_q\ : std_logic;
SIGNAL \ALT_INV_WriteReg[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_WriteReg[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_WriteReg[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_WriteReg[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ReadReg2[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_ReadReg2[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_ReadReg2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ReadReg2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ReadReg1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_ReadReg1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_ReadReg1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ReadReg1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~435_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~434_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~433_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~432_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~430_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~429_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~428_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~427_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~425_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~424_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~423_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~422_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~420_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~419_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~418_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~417_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~415_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~414_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~413_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~412_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~410_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~409_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~408_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~407_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~405_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~404_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~403_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~402_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~400_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~399_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~398_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~397_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~395_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~394_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~393_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~392_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~390_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~389_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~388_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~387_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~385_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~384_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~383_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~382_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~380_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~379_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~378_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~377_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~375_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~374_combout\ : std_logic;
SIGNAL \ALT_INV_ARRAYREG~373_combout\ : std_logic;

BEGIN

ww_ReadReg1 <= ReadReg1;
ww_ReadReg2 <= ReadReg2;
ww_WriteReg <= WriteReg;
ww_WriteData <= WriteData;
ww_RegWrite <= RegWrite;
ReadData1 <= ww_ReadData1;
ReadData2 <= ww_ReadData2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_ARRAYREG~201_q\ <= NOT \ARRAYREG~201_q\;
\ALT_INV_ARRAYREG~185_q\ <= NOT \ARRAYREG~185_q\;
\ALT_INV_ARRAYREG~169_q\ <= NOT \ARRAYREG~169_q\;
\ALT_INV_ARRAYREG~153_q\ <= NOT \ARRAYREG~153_q\;
\ALT_INV_ARRAYREG~298_combout\ <= NOT \ARRAYREG~298_combout\;
\ALT_INV_ARRAYREG~137_q\ <= NOT \ARRAYREG~137_q\;
\ALT_INV_ARRAYREG~121_q\ <= NOT \ARRAYREG~121_q\;
\ALT_INV_ARRAYREG~105_q\ <= NOT \ARRAYREG~105_q\;
\ALT_INV_ARRAYREG~89_q\ <= NOT \ARRAYREG~89_q\;
\ALT_INV_ARRAYREG~297_combout\ <= NOT \ARRAYREG~297_combout\;
\ALT_INV_ARRAYREG~73_q\ <= NOT \ARRAYREG~73_q\;
\ALT_INV_ARRAYREG~57_q\ <= NOT \ARRAYREG~57_q\;
\ALT_INV_ARRAYREG~41_q\ <= NOT \ARRAYREG~41_q\;
\ALT_INV_ARRAYREG~25_q\ <= NOT \ARRAYREG~25_q\;
\ALT_INV_ARRAYREG~295_combout\ <= NOT \ARRAYREG~295_combout\;
\ALT_INV_ARRAYREG~264_q\ <= NOT \ARRAYREG~264_q\;
\ALT_INV_ARRAYREG~200_q\ <= NOT \ARRAYREG~200_q\;
\ALT_INV_ARRAYREG~136_q\ <= NOT \ARRAYREG~136_q\;
\ALT_INV_ARRAYREG~72_q\ <= NOT \ARRAYREG~72_q\;
\ALT_INV_ARRAYREG~294_combout\ <= NOT \ARRAYREG~294_combout\;
\ALT_INV_ARRAYREG~248_q\ <= NOT \ARRAYREG~248_q\;
\ALT_INV_ARRAYREG~184_q\ <= NOT \ARRAYREG~184_q\;
\ALT_INV_ARRAYREG~120_q\ <= NOT \ARRAYREG~120_q\;
\ALT_INV_ARRAYREG~56_q\ <= NOT \ARRAYREG~56_q\;
\ALT_INV_ARRAYREG~293_combout\ <= NOT \ARRAYREG~293_combout\;
\ALT_INV_ARRAYREG~232_q\ <= NOT \ARRAYREG~232_q\;
\ALT_INV_ARRAYREG~168_q\ <= NOT \ARRAYREG~168_q\;
\ALT_INV_ARRAYREG~104_q\ <= NOT \ARRAYREG~104_q\;
\ALT_INV_ARRAYREG~40_q\ <= NOT \ARRAYREG~40_q\;
\ALT_INV_ARRAYREG~292_combout\ <= NOT \ARRAYREG~292_combout\;
\ALT_INV_ARRAYREG~216_q\ <= NOT \ARRAYREG~216_q\;
\ALT_INV_ARRAYREG~152_q\ <= NOT \ARRAYREG~152_q\;
\ALT_INV_ARRAYREG~88_q\ <= NOT \ARRAYREG~88_q\;
\ALT_INV_ARRAYREG~24_q\ <= NOT \ARRAYREG~24_q\;
\ALT_INV_ARRAYREG~290_combout\ <= NOT \ARRAYREG~290_combout\;
\ALT_INV_ARRAYREG~263_q\ <= NOT \ARRAYREG~263_q\;
\ALT_INV_ARRAYREG~247_q\ <= NOT \ARRAYREG~247_q\;
\ALT_INV_ARRAYREG~231_q\ <= NOT \ARRAYREG~231_q\;
\ALT_INV_ARRAYREG~215_q\ <= NOT \ARRAYREG~215_q\;
\ALT_INV_ARRAYREG~289_combout\ <= NOT \ARRAYREG~289_combout\;
\ALT_INV_ARRAYREG~199_q\ <= NOT \ARRAYREG~199_q\;
\ALT_INV_ARRAYREG~183_q\ <= NOT \ARRAYREG~183_q\;
\ALT_INV_ARRAYREG~167_q\ <= NOT \ARRAYREG~167_q\;
\ALT_INV_ARRAYREG~151_q\ <= NOT \ARRAYREG~151_q\;
\ALT_INV_ARRAYREG~288_combout\ <= NOT \ARRAYREG~288_combout\;
\ALT_INV_ARRAYREG~135_q\ <= NOT \ARRAYREG~135_q\;
\ALT_INV_ARRAYREG~119_q\ <= NOT \ARRAYREG~119_q\;
\ALT_INV_ARRAYREG~103_q\ <= NOT \ARRAYREG~103_q\;
\ALT_INV_ARRAYREG~87_q\ <= NOT \ARRAYREG~87_q\;
\ALT_INV_ARRAYREG~287_combout\ <= NOT \ARRAYREG~287_combout\;
\ALT_INV_ARRAYREG~71_q\ <= NOT \ARRAYREG~71_q\;
\ALT_INV_ARRAYREG~55_q\ <= NOT \ARRAYREG~55_q\;
\ALT_INV_ARRAYREG~39_q\ <= NOT \ARRAYREG~39_q\;
\ALT_INV_ARRAYREG~23_q\ <= NOT \ARRAYREG~23_q\;
\ALT_INV_ARRAYREG~285_combout\ <= NOT \ARRAYREG~285_combout\;
\ALT_INV_ARRAYREG~262_q\ <= NOT \ARRAYREG~262_q\;
\ALT_INV_ARRAYREG~198_q\ <= NOT \ARRAYREG~198_q\;
\ALT_INV_ARRAYREG~134_q\ <= NOT \ARRAYREG~134_q\;
\ALT_INV_ARRAYREG~70_q\ <= NOT \ARRAYREG~70_q\;
\ALT_INV_ARRAYREG~284_combout\ <= NOT \ARRAYREG~284_combout\;
\ALT_INV_ARRAYREG~246_q\ <= NOT \ARRAYREG~246_q\;
\ALT_INV_ARRAYREG~182_q\ <= NOT \ARRAYREG~182_q\;
\ALT_INV_ARRAYREG~118_q\ <= NOT \ARRAYREG~118_q\;
\ALT_INV_ARRAYREG~54_q\ <= NOT \ARRAYREG~54_q\;
\ALT_INV_ARRAYREG~283_combout\ <= NOT \ARRAYREG~283_combout\;
\ALT_INV_ARRAYREG~230_q\ <= NOT \ARRAYREG~230_q\;
\ALT_INV_ARRAYREG~166_q\ <= NOT \ARRAYREG~166_q\;
\ALT_INV_ARRAYREG~102_q\ <= NOT \ARRAYREG~102_q\;
\ALT_INV_ARRAYREG~38_q\ <= NOT \ARRAYREG~38_q\;
\ALT_INV_ARRAYREG~282_combout\ <= NOT \ARRAYREG~282_combout\;
\ALT_INV_ARRAYREG~214_q\ <= NOT \ARRAYREG~214_q\;
\ALT_INV_ARRAYREG~150_q\ <= NOT \ARRAYREG~150_q\;
\ALT_INV_ARRAYREG~86_q\ <= NOT \ARRAYREG~86_q\;
\ALT_INV_ARRAYREG~22_q\ <= NOT \ARRAYREG~22_q\;
\ALT_INV_ARRAYREG~280_combout\ <= NOT \ARRAYREG~280_combout\;
\ALT_INV_ARRAYREG~261_q\ <= NOT \ARRAYREG~261_q\;
\ALT_INV_ARRAYREG~245_q\ <= NOT \ARRAYREG~245_q\;
\ALT_INV_ARRAYREG~229_q\ <= NOT \ARRAYREG~229_q\;
\ALT_INV_ARRAYREG~213_q\ <= NOT \ARRAYREG~213_q\;
\ALT_INV_ARRAYREG~279_combout\ <= NOT \ARRAYREG~279_combout\;
\ALT_INV_ARRAYREG~197_q\ <= NOT \ARRAYREG~197_q\;
\ALT_INV_ARRAYREG~181_q\ <= NOT \ARRAYREG~181_q\;
\ALT_INV_ARRAYREG~165_q\ <= NOT \ARRAYREG~165_q\;
\ALT_INV_ARRAYREG~149_q\ <= NOT \ARRAYREG~149_q\;
\ALT_INV_ARRAYREG~278_combout\ <= NOT \ARRAYREG~278_combout\;
\ALT_INV_ARRAYREG~133_q\ <= NOT \ARRAYREG~133_q\;
\ALT_INV_ARRAYREG~117_q\ <= NOT \ARRAYREG~117_q\;
\ALT_INV_ARRAYREG~101_q\ <= NOT \ARRAYREG~101_q\;
\ALT_INV_ARRAYREG~85_q\ <= NOT \ARRAYREG~85_q\;
\ALT_INV_ARRAYREG~277_combout\ <= NOT \ARRAYREG~277_combout\;
\ALT_INV_ARRAYREG~69_q\ <= NOT \ARRAYREG~69_q\;
\ALT_INV_ARRAYREG~53_q\ <= NOT \ARRAYREG~53_q\;
\ALT_INV_ARRAYREG~37_q\ <= NOT \ARRAYREG~37_q\;
\ALT_INV_ARRAYREG~21_q\ <= NOT \ARRAYREG~21_q\;
\ALT_INV_ARRAYREG~329_combout\ <= NOT \ARRAYREG~329_combout\;
\ALT_INV_ARRAYREG~207_q\ <= NOT \ARRAYREG~207_q\;
\ALT_INV_ARRAYREG~191_q\ <= NOT \ARRAYREG~191_q\;
\ALT_INV_ARRAYREG~175_q\ <= NOT \ARRAYREG~175_q\;
\ALT_INV_ARRAYREG~159_q\ <= NOT \ARRAYREG~159_q\;
\ALT_INV_ARRAYREG~328_combout\ <= NOT \ARRAYREG~328_combout\;
\ALT_INV_ARRAYREG~143_q\ <= NOT \ARRAYREG~143_q\;
\ALT_INV_ARRAYREG~127_q\ <= NOT \ARRAYREG~127_q\;
\ALT_INV_ARRAYREG~111_q\ <= NOT \ARRAYREG~111_q\;
\ALT_INV_ARRAYREG~95_q\ <= NOT \ARRAYREG~95_q\;
\ALT_INV_ARRAYREG~327_combout\ <= NOT \ARRAYREG~327_combout\;
\ALT_INV_ARRAYREG~79_q\ <= NOT \ARRAYREG~79_q\;
\ALT_INV_ARRAYREG~63_q\ <= NOT \ARRAYREG~63_q\;
\ALT_INV_ARRAYREG~47_q\ <= NOT \ARRAYREG~47_q\;
\ALT_INV_ARRAYREG~31_q\ <= NOT \ARRAYREG~31_q\;
\ALT_INV_ARRAYREG~325_combout\ <= NOT \ARRAYREG~325_combout\;
\ALT_INV_ARRAYREG~270_q\ <= NOT \ARRAYREG~270_q\;
\ALT_INV_ARRAYREG~206_q\ <= NOT \ARRAYREG~206_q\;
\ALT_INV_ARRAYREG~142_q\ <= NOT \ARRAYREG~142_q\;
\ALT_INV_ARRAYREG~78_q\ <= NOT \ARRAYREG~78_q\;
\ALT_INV_ARRAYREG~324_combout\ <= NOT \ARRAYREG~324_combout\;
\ALT_INV_ARRAYREG~254_q\ <= NOT \ARRAYREG~254_q\;
\ALT_INV_ARRAYREG~190_q\ <= NOT \ARRAYREG~190_q\;
\ALT_INV_ARRAYREG~126_q\ <= NOT \ARRAYREG~126_q\;
\ALT_INV_ARRAYREG~62_q\ <= NOT \ARRAYREG~62_q\;
\ALT_INV_ARRAYREG~323_combout\ <= NOT \ARRAYREG~323_combout\;
\ALT_INV_ARRAYREG~238_q\ <= NOT \ARRAYREG~238_q\;
\ALT_INV_ARRAYREG~174_q\ <= NOT \ARRAYREG~174_q\;
\ALT_INV_ARRAYREG~110_q\ <= NOT \ARRAYREG~110_q\;
\ALT_INV_ARRAYREG~46_q\ <= NOT \ARRAYREG~46_q\;
\ALT_INV_ARRAYREG~322_combout\ <= NOT \ARRAYREG~322_combout\;
\ALT_INV_ARRAYREG~222_q\ <= NOT \ARRAYREG~222_q\;
\ALT_INV_ARRAYREG~158_q\ <= NOT \ARRAYREG~158_q\;
\ALT_INV_ARRAYREG~94_q\ <= NOT \ARRAYREG~94_q\;
\ALT_INV_ARRAYREG~30_q\ <= NOT \ARRAYREG~30_q\;
\ALT_INV_ARRAYREG~320_combout\ <= NOT \ARRAYREG~320_combout\;
\ALT_INV_ARRAYREG~269_q\ <= NOT \ARRAYREG~269_q\;
\ALT_INV_ARRAYREG~253_q\ <= NOT \ARRAYREG~253_q\;
\ALT_INV_ARRAYREG~237_q\ <= NOT \ARRAYREG~237_q\;
\ALT_INV_ARRAYREG~221_q\ <= NOT \ARRAYREG~221_q\;
\ALT_INV_ARRAYREG~319_combout\ <= NOT \ARRAYREG~319_combout\;
\ALT_INV_ARRAYREG~205_q\ <= NOT \ARRAYREG~205_q\;
\ALT_INV_ARRAYREG~189_q\ <= NOT \ARRAYREG~189_q\;
\ALT_INV_ARRAYREG~173_q\ <= NOT \ARRAYREG~173_q\;
\ALT_INV_ARRAYREG~157_q\ <= NOT \ARRAYREG~157_q\;
\ALT_INV_ARRAYREG~318_combout\ <= NOT \ARRAYREG~318_combout\;
\ALT_INV_ARRAYREG~141_q\ <= NOT \ARRAYREG~141_q\;
\ALT_INV_ARRAYREG~125_q\ <= NOT \ARRAYREG~125_q\;
\ALT_INV_ARRAYREG~109_q\ <= NOT \ARRAYREG~109_q\;
\ALT_INV_ARRAYREG~93_q\ <= NOT \ARRAYREG~93_q\;
\ALT_INV_ARRAYREG~317_combout\ <= NOT \ARRAYREG~317_combout\;
\ALT_INV_ARRAYREG~77_q\ <= NOT \ARRAYREG~77_q\;
\ALT_INV_ARRAYREG~61_q\ <= NOT \ARRAYREG~61_q\;
\ALT_INV_ARRAYREG~45_q\ <= NOT \ARRAYREG~45_q\;
\ALT_INV_ARRAYREG~29_q\ <= NOT \ARRAYREG~29_q\;
\ALT_INV_ARRAYREG~315_combout\ <= NOT \ARRAYREG~315_combout\;
\ALT_INV_ARRAYREG~268_q\ <= NOT \ARRAYREG~268_q\;
\ALT_INV_ARRAYREG~204_q\ <= NOT \ARRAYREG~204_q\;
\ALT_INV_ARRAYREG~140_q\ <= NOT \ARRAYREG~140_q\;
\ALT_INV_ARRAYREG~76_q\ <= NOT \ARRAYREG~76_q\;
\ALT_INV_ARRAYREG~314_combout\ <= NOT \ARRAYREG~314_combout\;
\ALT_INV_ARRAYREG~252_q\ <= NOT \ARRAYREG~252_q\;
\ALT_INV_ARRAYREG~188_q\ <= NOT \ARRAYREG~188_q\;
\ALT_INV_ARRAYREG~124_q\ <= NOT \ARRAYREG~124_q\;
\ALT_INV_ARRAYREG~60_q\ <= NOT \ARRAYREG~60_q\;
\ALT_INV_ARRAYREG~313_combout\ <= NOT \ARRAYREG~313_combout\;
\ALT_INV_ARRAYREG~236_q\ <= NOT \ARRAYREG~236_q\;
\ALT_INV_ARRAYREG~172_q\ <= NOT \ARRAYREG~172_q\;
\ALT_INV_ARRAYREG~108_q\ <= NOT \ARRAYREG~108_q\;
\ALT_INV_ARRAYREG~44_q\ <= NOT \ARRAYREG~44_q\;
\ALT_INV_ARRAYREG~312_combout\ <= NOT \ARRAYREG~312_combout\;
\ALT_INV_ARRAYREG~220_q\ <= NOT \ARRAYREG~220_q\;
\ALT_INV_ARRAYREG~156_q\ <= NOT \ARRAYREG~156_q\;
\ALT_INV_ARRAYREG~92_q\ <= NOT \ARRAYREG~92_q\;
\ALT_INV_ARRAYREG~28_q\ <= NOT \ARRAYREG~28_q\;
\ALT_INV_ARRAYREG~310_combout\ <= NOT \ARRAYREG~310_combout\;
\ALT_INV_ARRAYREG~267_q\ <= NOT \ARRAYREG~267_q\;
\ALT_INV_ARRAYREG~251_q\ <= NOT \ARRAYREG~251_q\;
\ALT_INV_ARRAYREG~235_q\ <= NOT \ARRAYREG~235_q\;
\ALT_INV_ARRAYREG~219_q\ <= NOT \ARRAYREG~219_q\;
\ALT_INV_ARRAYREG~309_combout\ <= NOT \ARRAYREG~309_combout\;
\ALT_INV_ARRAYREG~203_q\ <= NOT \ARRAYREG~203_q\;
\ALT_INV_ARRAYREG~187_q\ <= NOT \ARRAYREG~187_q\;
\ALT_INV_ARRAYREG~171_q\ <= NOT \ARRAYREG~171_q\;
\ALT_INV_ARRAYREG~155_q\ <= NOT \ARRAYREG~155_q\;
\ALT_INV_ARRAYREG~308_combout\ <= NOT \ARRAYREG~308_combout\;
\ALT_INV_ARRAYREG~139_q\ <= NOT \ARRAYREG~139_q\;
\ALT_INV_ARRAYREG~123_q\ <= NOT \ARRAYREG~123_q\;
\ALT_INV_ARRAYREG~107_q\ <= NOT \ARRAYREG~107_q\;
\ALT_INV_ARRAYREG~91_q\ <= NOT \ARRAYREG~91_q\;
\ALT_INV_ARRAYREG~307_combout\ <= NOT \ARRAYREG~307_combout\;
\ALT_INV_ARRAYREG~75_q\ <= NOT \ARRAYREG~75_q\;
\ALT_INV_ARRAYREG~59_q\ <= NOT \ARRAYREG~59_q\;
\ALT_INV_ARRAYREG~43_q\ <= NOT \ARRAYREG~43_q\;
\ALT_INV_ARRAYREG~27_q\ <= NOT \ARRAYREG~27_q\;
\ALT_INV_ARRAYREG~305_combout\ <= NOT \ARRAYREG~305_combout\;
\ALT_INV_ARRAYREG~266_q\ <= NOT \ARRAYREG~266_q\;
\ALT_INV_ARRAYREG~202_q\ <= NOT \ARRAYREG~202_q\;
\ALT_INV_ARRAYREG~138_q\ <= NOT \ARRAYREG~138_q\;
\ALT_INV_ARRAYREG~74_q\ <= NOT \ARRAYREG~74_q\;
\ALT_INV_ARRAYREG~304_combout\ <= NOT \ARRAYREG~304_combout\;
\ALT_INV_ARRAYREG~250_q\ <= NOT \ARRAYREG~250_q\;
\ALT_INV_ARRAYREG~186_q\ <= NOT \ARRAYREG~186_q\;
\ALT_INV_ARRAYREG~122_q\ <= NOT \ARRAYREG~122_q\;
\ALT_INV_ARRAYREG~58_q\ <= NOT \ARRAYREG~58_q\;
\ALT_INV_ARRAYREG~303_combout\ <= NOT \ARRAYREG~303_combout\;
\ALT_INV_ARRAYREG~234_q\ <= NOT \ARRAYREG~234_q\;
\ALT_INV_ARRAYREG~170_q\ <= NOT \ARRAYREG~170_q\;
\ALT_INV_ARRAYREG~106_q\ <= NOT \ARRAYREG~106_q\;
\ALT_INV_ARRAYREG~42_q\ <= NOT \ARRAYREG~42_q\;
\ALT_INV_ARRAYREG~302_combout\ <= NOT \ARRAYREG~302_combout\;
\ALT_INV_ARRAYREG~218_q\ <= NOT \ARRAYREG~218_q\;
\ALT_INV_ARRAYREG~154_q\ <= NOT \ARRAYREG~154_q\;
\ALT_INV_ARRAYREG~90_q\ <= NOT \ARRAYREG~90_q\;
\ALT_INV_ARRAYREG~26_q\ <= NOT \ARRAYREG~26_q\;
\ALT_INV_ARRAYREG~300_combout\ <= NOT \ARRAYREG~300_combout\;
\ALT_INV_ARRAYREG~265_q\ <= NOT \ARRAYREG~265_q\;
\ALT_INV_ARRAYREG~249_q\ <= NOT \ARRAYREG~249_q\;
\ALT_INV_ARRAYREG~233_q\ <= NOT \ARRAYREG~233_q\;
\ALT_INV_ARRAYREG~217_q\ <= NOT \ARRAYREG~217_q\;
\ALT_INV_ARRAYREG~299_combout\ <= NOT \ARRAYREG~299_combout\;
\ALT_INV_ARRAYREG~372_combout\ <= NOT \ARRAYREG~372_combout\;
\ALT_INV_ARRAYREG~370_combout\ <= NOT \ARRAYREG~370_combout\;
\ALT_INV_ARRAYREG~369_combout\ <= NOT \ARRAYREG~369_combout\;
\ALT_INV_ARRAYREG~368_combout\ <= NOT \ARRAYREG~368_combout\;
\ALT_INV_ARRAYREG~367_combout\ <= NOT \ARRAYREG~367_combout\;
\ALT_INV_ARRAYREG~365_combout\ <= NOT \ARRAYREG~365_combout\;
\ALT_INV_ARRAYREG~364_combout\ <= NOT \ARRAYREG~364_combout\;
\ALT_INV_ARRAYREG~363_combout\ <= NOT \ARRAYREG~363_combout\;
\ALT_INV_ARRAYREG~362_combout\ <= NOT \ARRAYREG~362_combout\;
\ALT_INV_ARRAYREG~360_combout\ <= NOT \ARRAYREG~360_combout\;
\ALT_INV_ARRAYREG~359_combout\ <= NOT \ARRAYREG~359_combout\;
\ALT_INV_ARRAYREG~358_combout\ <= NOT \ARRAYREG~358_combout\;
\ALT_INV_ARRAYREG~357_combout\ <= NOT \ARRAYREG~357_combout\;
\ALT_INV_ARRAYREG~355_combout\ <= NOT \ARRAYREG~355_combout\;
\ALT_INV_ARRAYREG~276_q\ <= NOT \ARRAYREG~276_q\;
\ALT_INV_ARRAYREG~212_q\ <= NOT \ARRAYREG~212_q\;
\ALT_INV_ARRAYREG~148_q\ <= NOT \ARRAYREG~148_q\;
\ALT_INV_ARRAYREG~84_q\ <= NOT \ARRAYREG~84_q\;
\ALT_INV_ARRAYREG~354_combout\ <= NOT \ARRAYREG~354_combout\;
\ALT_INV_ARRAYREG~260_q\ <= NOT \ARRAYREG~260_q\;
\ALT_INV_ARRAYREG~196_q\ <= NOT \ARRAYREG~196_q\;
\ALT_INV_ARRAYREG~132_q\ <= NOT \ARRAYREG~132_q\;
\ALT_INV_ARRAYREG~68_q\ <= NOT \ARRAYREG~68_q\;
\ALT_INV_ARRAYREG~353_combout\ <= NOT \ARRAYREG~353_combout\;
\ALT_INV_ARRAYREG~244_q\ <= NOT \ARRAYREG~244_q\;
\ALT_INV_ARRAYREG~180_q\ <= NOT \ARRAYREG~180_q\;
\ALT_INV_ARRAYREG~116_q\ <= NOT \ARRAYREG~116_q\;
\ALT_INV_ARRAYREG~52_q\ <= NOT \ARRAYREG~52_q\;
\ALT_INV_ARRAYREG~352_combout\ <= NOT \ARRAYREG~352_combout\;
\ALT_INV_ARRAYREG~228_q\ <= NOT \ARRAYREG~228_q\;
\ALT_INV_ARRAYREG~164_q\ <= NOT \ARRAYREG~164_q\;
\ALT_INV_ARRAYREG~100_q\ <= NOT \ARRAYREG~100_q\;
\ALT_INV_ARRAYREG~36_q\ <= NOT \ARRAYREG~36_q\;
\ALT_INV_ARRAYREG~350_combout\ <= NOT \ARRAYREG~350_combout\;
\ALT_INV_ARRAYREG~275_q\ <= NOT \ARRAYREG~275_q\;
\ALT_INV_ARRAYREG~259_q\ <= NOT \ARRAYREG~259_q\;
\ALT_INV_ARRAYREG~243_q\ <= NOT \ARRAYREG~243_q\;
\ALT_INV_ARRAYREG~227_q\ <= NOT \ARRAYREG~227_q\;
\ALT_INV_ARRAYREG~349_combout\ <= NOT \ARRAYREG~349_combout\;
\ALT_INV_ARRAYREG~211_q\ <= NOT \ARRAYREG~211_q\;
\ALT_INV_ARRAYREG~195_q\ <= NOT \ARRAYREG~195_q\;
\ALT_INV_ARRAYREG~179_q\ <= NOT \ARRAYREG~179_q\;
\ALT_INV_ARRAYREG~163_q\ <= NOT \ARRAYREG~163_q\;
\ALT_INV_ARRAYREG~348_combout\ <= NOT \ARRAYREG~348_combout\;
\ALT_INV_ARRAYREG~147_q\ <= NOT \ARRAYREG~147_q\;
\ALT_INV_ARRAYREG~131_q\ <= NOT \ARRAYREG~131_q\;
\ALT_INV_ARRAYREG~115_q\ <= NOT \ARRAYREG~115_q\;
\ALT_INV_ARRAYREG~99_q\ <= NOT \ARRAYREG~99_q\;
\ALT_INV_ARRAYREG~347_combout\ <= NOT \ARRAYREG~347_combout\;
\ALT_INV_ARRAYREG~83_q\ <= NOT \ARRAYREG~83_q\;
\ALT_INV_ARRAYREG~67_q\ <= NOT \ARRAYREG~67_q\;
\ALT_INV_ARRAYREG~51_q\ <= NOT \ARRAYREG~51_q\;
\ALT_INV_ARRAYREG~35_q\ <= NOT \ARRAYREG~35_q\;
\ALT_INV_ARRAYREG~345_combout\ <= NOT \ARRAYREG~345_combout\;
\ALT_INV_ARRAYREG~274_q\ <= NOT \ARRAYREG~274_q\;
\ALT_INV_ARRAYREG~210_q\ <= NOT \ARRAYREG~210_q\;
\ALT_INV_ARRAYREG~146_q\ <= NOT \ARRAYREG~146_q\;
\ALT_INV_ARRAYREG~82_q\ <= NOT \ARRAYREG~82_q\;
\ALT_INV_ARRAYREG~344_combout\ <= NOT \ARRAYREG~344_combout\;
\ALT_INV_ARRAYREG~258_q\ <= NOT \ARRAYREG~258_q\;
\ALT_INV_ARRAYREG~194_q\ <= NOT \ARRAYREG~194_q\;
\ALT_INV_ARRAYREG~130_q\ <= NOT \ARRAYREG~130_q\;
\ALT_INV_ARRAYREG~66_q\ <= NOT \ARRAYREG~66_q\;
\ALT_INV_ARRAYREG~343_combout\ <= NOT \ARRAYREG~343_combout\;
\ALT_INV_ARRAYREG~242_q\ <= NOT \ARRAYREG~242_q\;
\ALT_INV_ARRAYREG~178_q\ <= NOT \ARRAYREG~178_q\;
\ALT_INV_ARRAYREG~114_q\ <= NOT \ARRAYREG~114_q\;
\ALT_INV_ARRAYREG~50_q\ <= NOT \ARRAYREG~50_q\;
\ALT_INV_ARRAYREG~342_combout\ <= NOT \ARRAYREG~342_combout\;
\ALT_INV_ARRAYREG~226_q\ <= NOT \ARRAYREG~226_q\;
\ALT_INV_ARRAYREG~162_q\ <= NOT \ARRAYREG~162_q\;
\ALT_INV_ARRAYREG~98_q\ <= NOT \ARRAYREG~98_q\;
\ALT_INV_ARRAYREG~34_q\ <= NOT \ARRAYREG~34_q\;
\ALT_INV_ARRAYREG~340_combout\ <= NOT \ARRAYREG~340_combout\;
\ALT_INV_ARRAYREG~273_q\ <= NOT \ARRAYREG~273_q\;
\ALT_INV_ARRAYREG~257_q\ <= NOT \ARRAYREG~257_q\;
\ALT_INV_ARRAYREG~241_q\ <= NOT \ARRAYREG~241_q\;
\ALT_INV_ARRAYREG~225_q\ <= NOT \ARRAYREG~225_q\;
\ALT_INV_ARRAYREG~339_combout\ <= NOT \ARRAYREG~339_combout\;
\ALT_INV_ARRAYREG~209_q\ <= NOT \ARRAYREG~209_q\;
\ALT_INV_ARRAYREG~193_q\ <= NOT \ARRAYREG~193_q\;
\ALT_INV_ARRAYREG~177_q\ <= NOT \ARRAYREG~177_q\;
\ALT_INV_ARRAYREG~161_q\ <= NOT \ARRAYREG~161_q\;
\ALT_INV_ARRAYREG~338_combout\ <= NOT \ARRAYREG~338_combout\;
\ALT_INV_ARRAYREG~145_q\ <= NOT \ARRAYREG~145_q\;
\ALT_INV_ARRAYREG~129_q\ <= NOT \ARRAYREG~129_q\;
\ALT_INV_ARRAYREG~113_q\ <= NOT \ARRAYREG~113_q\;
\ALT_INV_ARRAYREG~97_q\ <= NOT \ARRAYREG~97_q\;
\ALT_INV_ARRAYREG~337_combout\ <= NOT \ARRAYREG~337_combout\;
\ALT_INV_ARRAYREG~81_q\ <= NOT \ARRAYREG~81_q\;
\ALT_INV_ARRAYREG~65_q\ <= NOT \ARRAYREG~65_q\;
\ALT_INV_ARRAYREG~49_q\ <= NOT \ARRAYREG~49_q\;
\ALT_INV_ARRAYREG~33_q\ <= NOT \ARRAYREG~33_q\;
\ALT_INV_ARRAYREG~335_combout\ <= NOT \ARRAYREG~335_combout\;
\ALT_INV_ARRAYREG~272_q\ <= NOT \ARRAYREG~272_q\;
\ALT_INV_ARRAYREG~208_q\ <= NOT \ARRAYREG~208_q\;
\ALT_INV_ARRAYREG~144_q\ <= NOT \ARRAYREG~144_q\;
\ALT_INV_ARRAYREG~80_q\ <= NOT \ARRAYREG~80_q\;
\ALT_INV_ARRAYREG~334_combout\ <= NOT \ARRAYREG~334_combout\;
\ALT_INV_ARRAYREG~256_q\ <= NOT \ARRAYREG~256_q\;
\ALT_INV_ARRAYREG~192_q\ <= NOT \ARRAYREG~192_q\;
\ALT_INV_ARRAYREG~128_q\ <= NOT \ARRAYREG~128_q\;
\ALT_INV_ARRAYREG~64_q\ <= NOT \ARRAYREG~64_q\;
\ALT_INV_ARRAYREG~333_combout\ <= NOT \ARRAYREG~333_combout\;
\ALT_INV_ARRAYREG~240_q\ <= NOT \ARRAYREG~240_q\;
\ALT_INV_ARRAYREG~176_q\ <= NOT \ARRAYREG~176_q\;
\ALT_INV_ARRAYREG~112_q\ <= NOT \ARRAYREG~112_q\;
\ALT_INV_ARRAYREG~48_q\ <= NOT \ARRAYREG~48_q\;
\ALT_INV_ARRAYREG~332_combout\ <= NOT \ARRAYREG~332_combout\;
\ALT_INV_ARRAYREG~224_q\ <= NOT \ARRAYREG~224_q\;
\ALT_INV_ARRAYREG~160_q\ <= NOT \ARRAYREG~160_q\;
\ALT_INV_ARRAYREG~96_q\ <= NOT \ARRAYREG~96_q\;
\ALT_INV_ARRAYREG~32_q\ <= NOT \ARRAYREG~32_q\;
\ALT_INV_ARRAYREG~330_combout\ <= NOT \ARRAYREG~330_combout\;
\ALT_INV_ARRAYREG~271_q\ <= NOT \ARRAYREG~271_q\;
\ALT_INV_ARRAYREG~255_q\ <= NOT \ARRAYREG~255_q\;
\ALT_INV_ARRAYREG~239_q\ <= NOT \ARRAYREG~239_q\;
\ALT_INV_ARRAYREG~223_q\ <= NOT \ARRAYREG~223_q\;
\ALT_INV_WriteReg[3]~input_o\ <= NOT \WriteReg[3]~input_o\;
\ALT_INV_WriteReg[2]~input_o\ <= NOT \WriteReg[2]~input_o\;
\ALT_INV_WriteReg[1]~input_o\ <= NOT \WriteReg[1]~input_o\;
\ALT_INV_WriteReg[0]~input_o\ <= NOT \WriteReg[0]~input_o\;
\ALT_INV_ReadReg2[3]~input_o\ <= NOT \ReadReg2[3]~input_o\;
\ALT_INV_ReadReg2[2]~input_o\ <= NOT \ReadReg2[2]~input_o\;
\ALT_INV_ReadReg2[1]~input_o\ <= NOT \ReadReg2[1]~input_o\;
\ALT_INV_ReadReg2[0]~input_o\ <= NOT \ReadReg2[0]~input_o\;
\ALT_INV_ReadReg1[3]~input_o\ <= NOT \ReadReg1[3]~input_o\;
\ALT_INV_ReadReg1[2]~input_o\ <= NOT \ReadReg1[2]~input_o\;
\ALT_INV_ReadReg1[1]~input_o\ <= NOT \ReadReg1[1]~input_o\;
\ALT_INV_ReadReg1[0]~input_o\ <= NOT \ReadReg1[0]~input_o\;
\ALT_INV_ARRAYREG~435_combout\ <= NOT \ARRAYREG~435_combout\;
\ALT_INV_ARRAYREG~434_combout\ <= NOT \ARRAYREG~434_combout\;
\ALT_INV_ARRAYREG~433_combout\ <= NOT \ARRAYREG~433_combout\;
\ALT_INV_ARRAYREG~432_combout\ <= NOT \ARRAYREG~432_combout\;
\ALT_INV_ARRAYREG~430_combout\ <= NOT \ARRAYREG~430_combout\;
\ALT_INV_ARRAYREG~429_combout\ <= NOT \ARRAYREG~429_combout\;
\ALT_INV_ARRAYREG~428_combout\ <= NOT \ARRAYREG~428_combout\;
\ALT_INV_ARRAYREG~427_combout\ <= NOT \ARRAYREG~427_combout\;
\ALT_INV_ARRAYREG~425_combout\ <= NOT \ARRAYREG~425_combout\;
\ALT_INV_ARRAYREG~424_combout\ <= NOT \ARRAYREG~424_combout\;
\ALT_INV_ARRAYREG~423_combout\ <= NOT \ARRAYREG~423_combout\;
\ALT_INV_ARRAYREG~422_combout\ <= NOT \ARRAYREG~422_combout\;
\ALT_INV_ARRAYREG~420_combout\ <= NOT \ARRAYREG~420_combout\;
\ALT_INV_ARRAYREG~419_combout\ <= NOT \ARRAYREG~419_combout\;
\ALT_INV_ARRAYREG~418_combout\ <= NOT \ARRAYREG~418_combout\;
\ALT_INV_ARRAYREG~417_combout\ <= NOT \ARRAYREG~417_combout\;
\ALT_INV_ARRAYREG~415_combout\ <= NOT \ARRAYREG~415_combout\;
\ALT_INV_ARRAYREG~414_combout\ <= NOT \ARRAYREG~414_combout\;
\ALT_INV_ARRAYREG~413_combout\ <= NOT \ARRAYREG~413_combout\;
\ALT_INV_ARRAYREG~412_combout\ <= NOT \ARRAYREG~412_combout\;
\ALT_INV_ARRAYREG~410_combout\ <= NOT \ARRAYREG~410_combout\;
\ALT_INV_ARRAYREG~409_combout\ <= NOT \ARRAYREG~409_combout\;
\ALT_INV_ARRAYREG~408_combout\ <= NOT \ARRAYREG~408_combout\;
\ALT_INV_ARRAYREG~407_combout\ <= NOT \ARRAYREG~407_combout\;
\ALT_INV_ARRAYREG~405_combout\ <= NOT \ARRAYREG~405_combout\;
\ALT_INV_ARRAYREG~404_combout\ <= NOT \ARRAYREG~404_combout\;
\ALT_INV_ARRAYREG~403_combout\ <= NOT \ARRAYREG~403_combout\;
\ALT_INV_ARRAYREG~402_combout\ <= NOT \ARRAYREG~402_combout\;
\ALT_INV_ARRAYREG~400_combout\ <= NOT \ARRAYREG~400_combout\;
\ALT_INV_ARRAYREG~399_combout\ <= NOT \ARRAYREG~399_combout\;
\ALT_INV_ARRAYREG~398_combout\ <= NOT \ARRAYREG~398_combout\;
\ALT_INV_ARRAYREG~397_combout\ <= NOT \ARRAYREG~397_combout\;
\ALT_INV_ARRAYREG~395_combout\ <= NOT \ARRAYREG~395_combout\;
\ALT_INV_ARRAYREG~394_combout\ <= NOT \ARRAYREG~394_combout\;
\ALT_INV_ARRAYREG~393_combout\ <= NOT \ARRAYREG~393_combout\;
\ALT_INV_ARRAYREG~392_combout\ <= NOT \ARRAYREG~392_combout\;
\ALT_INV_ARRAYREG~390_combout\ <= NOT \ARRAYREG~390_combout\;
\ALT_INV_ARRAYREG~389_combout\ <= NOT \ARRAYREG~389_combout\;
\ALT_INV_ARRAYREG~388_combout\ <= NOT \ARRAYREG~388_combout\;
\ALT_INV_ARRAYREG~387_combout\ <= NOT \ARRAYREG~387_combout\;
\ALT_INV_ARRAYREG~385_combout\ <= NOT \ARRAYREG~385_combout\;
\ALT_INV_ARRAYREG~384_combout\ <= NOT \ARRAYREG~384_combout\;
\ALT_INV_ARRAYREG~383_combout\ <= NOT \ARRAYREG~383_combout\;
\ALT_INV_ARRAYREG~382_combout\ <= NOT \ARRAYREG~382_combout\;
\ALT_INV_ARRAYREG~380_combout\ <= NOT \ARRAYREG~380_combout\;
\ALT_INV_ARRAYREG~379_combout\ <= NOT \ARRAYREG~379_combout\;
\ALT_INV_ARRAYREG~378_combout\ <= NOT \ARRAYREG~378_combout\;
\ALT_INV_ARRAYREG~377_combout\ <= NOT \ARRAYREG~377_combout\;
\ALT_INV_ARRAYREG~375_combout\ <= NOT \ARRAYREG~375_combout\;
\ALT_INV_ARRAYREG~374_combout\ <= NOT \ARRAYREG~374_combout\;
\ALT_INV_ARRAYREG~373_combout\ <= NOT \ARRAYREG~373_combout\;

\ReadData1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ARRAYREG~281_combout\,
	devoe => ww_devoe,
	o => \ReadData1[0]~output_o\);

\ReadData1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ARRAYREG~286_combout\,
	devoe => ww_devoe,
	o => \ReadData1[1]~output_o\);

\ReadData1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ARRAYREG~291_combout\,
	devoe => ww_devoe,
	o => \ReadData1[2]~output_o\);

\ReadData1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ARRAYREG~296_combout\,
	devoe => ww_devoe,
	o => \ReadData1[3]~output_o\);

\ReadData1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ARRAYREG~301_combout\,
	devoe => ww_devoe,
	o => \ReadData1[4]~output_o\);

\ReadData1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ARRAYREG~306_combout\,
	devoe => ww_devoe,
	o => \ReadData1[5]~output_o\);

\ReadData1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ARRAYREG~311_combout\,
	devoe => ww_devoe,
	o => \ReadData1[6]~output_o\);

\ReadData1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ARRAYREG~316_combout\,
	devoe => ww_devoe,
	o => \ReadData1[7]~output_o\);

\ReadData1[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ARRAYREG~321_combout\,
	devoe => ww_devoe,
	o => \ReadData1[8]~output_o\);

\ReadData1[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ARRAYREG~326_combout\,
	devoe => ww_devoe,
	o => \ReadData1[9]~output_o\);

\ReadData1[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ARRAYREG~331_combout\,
	devoe => ww_devoe,
	o => \ReadData1[10]~output_o\);

\ReadData1[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ARRAYREG~336_combout\,
	devoe => ww_devoe,
	o => \ReadData1[11]~output_o\);

\ReadData1[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ARRAYREG~341_combout\,
	devoe => ww_devoe,
	o => \ReadData1[12]~output_o\);

\ReadData1[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ARRAYREG~346_combout\,
	devoe => ww_devoe,
	o => \ReadData1[13]~output_o\);

\ReadData1[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ARRAYREG~351_combout\,
	devoe => ww_devoe,
	o => \ReadData1[14]~output_o\);

\ReadData1[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ARRAYREG~356_combout\,
	devoe => ww_devoe,
	o => \ReadData1[15]~output_o\);

\ReadData2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ARRAYREG~361_combout\,
	devoe => ww_devoe,
	o => \ReadData2[0]~output_o\);

\ReadData2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ARRAYREG~366_combout\,
	devoe => ww_devoe,
	o => \ReadData2[1]~output_o\);

\ReadData2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ARRAYREG~371_combout\,
	devoe => ww_devoe,
	o => \ReadData2[2]~output_o\);

\ReadData2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ARRAYREG~376_combout\,
	devoe => ww_devoe,
	o => \ReadData2[3]~output_o\);

\ReadData2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ARRAYREG~381_combout\,
	devoe => ww_devoe,
	o => \ReadData2[4]~output_o\);

\ReadData2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ARRAYREG~386_combout\,
	devoe => ww_devoe,
	o => \ReadData2[5]~output_o\);

\ReadData2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ARRAYREG~391_combout\,
	devoe => ww_devoe,
	o => \ReadData2[6]~output_o\);

\ReadData2[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ARRAYREG~396_combout\,
	devoe => ww_devoe,
	o => \ReadData2[7]~output_o\);

\ReadData2[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ARRAYREG~401_combout\,
	devoe => ww_devoe,
	o => \ReadData2[8]~output_o\);

\ReadData2[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ARRAYREG~406_combout\,
	devoe => ww_devoe,
	o => \ReadData2[9]~output_o\);

\ReadData2[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ARRAYREG~411_combout\,
	devoe => ww_devoe,
	o => \ReadData2[10]~output_o\);

\ReadData2[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ARRAYREG~416_combout\,
	devoe => ww_devoe,
	o => \ReadData2[11]~output_o\);

\ReadData2[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ARRAYREG~421_combout\,
	devoe => ww_devoe,
	o => \ReadData2[12]~output_o\);

\ReadData2[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ARRAYREG~426_combout\,
	devoe => ww_devoe,
	o => \ReadData2[13]~output_o\);

\ReadData2[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ARRAYREG~431_combout\,
	devoe => ww_devoe,
	o => \ReadData2[14]~output_o\);

\ReadData2[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ARRAYREG~436_combout\,
	devoe => ww_devoe,
	o => \ReadData2[15]~output_o\);

\RegWrite~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegWrite,
	o => \RegWrite~input_o\);

\WriteData[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(0),
	o => \WriteData[0]~input_o\);

\WriteReg[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteReg(0),
	o => \WriteReg[0]~input_o\);

\WriteReg[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteReg(1),
	o => \WriteReg[1]~input_o\);

\WriteReg[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteReg(2),
	o => \WriteReg[2]~input_o\);

\WriteReg[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteReg(3),
	o => \WriteReg[3]~input_o\);

\ARRAYREG~437\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~437_combout\ = (!\WriteReg[0]~input_o\ & (!\WriteReg[1]~input_o\ & (!\WriteReg[2]~input_o\ & !\WriteReg[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WriteReg[0]~input_o\,
	datab => \ALT_INV_WriteReg[1]~input_o\,
	datac => \ALT_INV_WriteReg[2]~input_o\,
	datad => \ALT_INV_WriteReg[3]~input_o\,
	combout => \ARRAYREG~437_combout\);

\ARRAYREG~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[0]~input_o\,
	ena => \ARRAYREG~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~21_q\);

\ARRAYREG~438\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~438_combout\ = (\WriteReg[0]~input_o\ & (!\WriteReg[1]~input_o\ & (!\WriteReg[2]~input_o\ & !\WriteReg[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WriteReg[0]~input_o\,
	datab => \ALT_INV_WriteReg[1]~input_o\,
	datac => \ALT_INV_WriteReg[2]~input_o\,
	datad => \ALT_INV_WriteReg[3]~input_o\,
	combout => \ARRAYREG~438_combout\);

\ARRAYREG~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[0]~input_o\,
	ena => \ARRAYREG~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~37_q\);

\ARRAYREG~439\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~439_combout\ = (!\WriteReg[0]~input_o\ & (\WriteReg[1]~input_o\ & (!\WriteReg[2]~input_o\ & !\WriteReg[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WriteReg[0]~input_o\,
	datab => \ALT_INV_WriteReg[1]~input_o\,
	datac => \ALT_INV_WriteReg[2]~input_o\,
	datad => \ALT_INV_WriteReg[3]~input_o\,
	combout => \ARRAYREG~439_combout\);

\ARRAYREG~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[0]~input_o\,
	ena => \ARRAYREG~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~53_q\);

\ARRAYREG~440\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~440_combout\ = (\WriteReg[0]~input_o\ & (\WriteReg[1]~input_o\ & (!\WriteReg[2]~input_o\ & !\WriteReg[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WriteReg[0]~input_o\,
	datab => \ALT_INV_WriteReg[1]~input_o\,
	datac => \ALT_INV_WriteReg[2]~input_o\,
	datad => \ALT_INV_WriteReg[3]~input_o\,
	combout => \ARRAYREG~440_combout\);

\ARRAYREG~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[0]~input_o\,
	ena => \ARRAYREG~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~69_q\);

\ReadReg1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReadReg1(0),
	o => \ReadReg1[0]~input_o\);

\ReadReg1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReadReg1(1),
	o => \ReadReg1[1]~input_o\);

\ARRAYREG~277\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~277_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~69_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~53_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~37_q\ ) 
-- ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~21_q\,
	datab => \ALT_INV_ARRAYREG~37_q\,
	datac => \ALT_INV_ARRAYREG~53_q\,
	datad => \ALT_INV_ARRAYREG~69_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~277_combout\);

\ARRAYREG~441\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~441_combout\ = (!\WriteReg[0]~input_o\ & (!\WriteReg[1]~input_o\ & (\WriteReg[2]~input_o\ & !\WriteReg[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WriteReg[0]~input_o\,
	datab => \ALT_INV_WriteReg[1]~input_o\,
	datac => \ALT_INV_WriteReg[2]~input_o\,
	datad => \ALT_INV_WriteReg[3]~input_o\,
	combout => \ARRAYREG~441_combout\);

\ARRAYREG~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[0]~input_o\,
	ena => \ARRAYREG~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~85_q\);

\ARRAYREG~442\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~442_combout\ = (\WriteReg[0]~input_o\ & (!\WriteReg[1]~input_o\ & (\WriteReg[2]~input_o\ & !\WriteReg[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WriteReg[0]~input_o\,
	datab => \ALT_INV_WriteReg[1]~input_o\,
	datac => \ALT_INV_WriteReg[2]~input_o\,
	datad => \ALT_INV_WriteReg[3]~input_o\,
	combout => \ARRAYREG~442_combout\);

\ARRAYREG~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[0]~input_o\,
	ena => \ARRAYREG~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~101_q\);

\ARRAYREG~443\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~443_combout\ = (!\WriteReg[0]~input_o\ & (\WriteReg[1]~input_o\ & (\WriteReg[2]~input_o\ & !\WriteReg[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WriteReg[0]~input_o\,
	datab => \ALT_INV_WriteReg[1]~input_o\,
	datac => \ALT_INV_WriteReg[2]~input_o\,
	datad => \ALT_INV_WriteReg[3]~input_o\,
	combout => \ARRAYREG~443_combout\);

\ARRAYREG~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[0]~input_o\,
	ena => \ARRAYREG~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~117_q\);

\ARRAYREG~444\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~444_combout\ = (\WriteReg[0]~input_o\ & (\WriteReg[1]~input_o\ & (\WriteReg[2]~input_o\ & !\WriteReg[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WriteReg[0]~input_o\,
	datab => \ALT_INV_WriteReg[1]~input_o\,
	datac => \ALT_INV_WriteReg[2]~input_o\,
	datad => \ALT_INV_WriteReg[3]~input_o\,
	combout => \ARRAYREG~444_combout\);

\ARRAYREG~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[0]~input_o\,
	ena => \ARRAYREG~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~133_q\);

\ARRAYREG~278\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~278_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~133_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~117_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~101_q\ 
-- ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~85_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~85_q\,
	datab => \ALT_INV_ARRAYREG~101_q\,
	datac => \ALT_INV_ARRAYREG~117_q\,
	datad => \ALT_INV_ARRAYREG~133_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~278_combout\);

\ARRAYREG~445\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~445_combout\ = (!\WriteReg[0]~input_o\ & (!\WriteReg[1]~input_o\ & (!\WriteReg[2]~input_o\ & \WriteReg[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WriteReg[0]~input_o\,
	datab => \ALT_INV_WriteReg[1]~input_o\,
	datac => \ALT_INV_WriteReg[2]~input_o\,
	datad => \ALT_INV_WriteReg[3]~input_o\,
	combout => \ARRAYREG~445_combout\);

\ARRAYREG~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[0]~input_o\,
	ena => \ARRAYREG~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~149_q\);

\ARRAYREG~446\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~446_combout\ = (\WriteReg[0]~input_o\ & (!\WriteReg[1]~input_o\ & (!\WriteReg[2]~input_o\ & \WriteReg[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WriteReg[0]~input_o\,
	datab => \ALT_INV_WriteReg[1]~input_o\,
	datac => \ALT_INV_WriteReg[2]~input_o\,
	datad => \ALT_INV_WriteReg[3]~input_o\,
	combout => \ARRAYREG~446_combout\);

\ARRAYREG~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[0]~input_o\,
	ena => \ARRAYREG~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~165_q\);

\ARRAYREG~447\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~447_combout\ = (!\WriteReg[0]~input_o\ & (\WriteReg[1]~input_o\ & (!\WriteReg[2]~input_o\ & \WriteReg[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WriteReg[0]~input_o\,
	datab => \ALT_INV_WriteReg[1]~input_o\,
	datac => \ALT_INV_WriteReg[2]~input_o\,
	datad => \ALT_INV_WriteReg[3]~input_o\,
	combout => \ARRAYREG~447_combout\);

\ARRAYREG~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[0]~input_o\,
	ena => \ARRAYREG~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~181_q\);

\ARRAYREG~448\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~448_combout\ = (\WriteReg[0]~input_o\ & (\WriteReg[1]~input_o\ & (!\WriteReg[2]~input_o\ & \WriteReg[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WriteReg[0]~input_o\,
	datab => \ALT_INV_WriteReg[1]~input_o\,
	datac => \ALT_INV_WriteReg[2]~input_o\,
	datad => \ALT_INV_WriteReg[3]~input_o\,
	combout => \ARRAYREG~448_combout\);

\ARRAYREG~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[0]~input_o\,
	ena => \ARRAYREG~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~197_q\);

\ARRAYREG~279\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~279_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~197_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~181_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~165_q\ 
-- ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~149_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~149_q\,
	datab => \ALT_INV_ARRAYREG~165_q\,
	datac => \ALT_INV_ARRAYREG~181_q\,
	datad => \ALT_INV_ARRAYREG~197_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~279_combout\);

\ARRAYREG~449\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~449_combout\ = (!\WriteReg[0]~input_o\ & (!\WriteReg[1]~input_o\ & (\WriteReg[2]~input_o\ & \WriteReg[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WriteReg[0]~input_o\,
	datab => \ALT_INV_WriteReg[1]~input_o\,
	datac => \ALT_INV_WriteReg[2]~input_o\,
	datad => \ALT_INV_WriteReg[3]~input_o\,
	combout => \ARRAYREG~449_combout\);

\ARRAYREG~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[0]~input_o\,
	ena => \ARRAYREG~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~213_q\);

\ARRAYREG~450\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~450_combout\ = (\WriteReg[0]~input_o\ & (!\WriteReg[1]~input_o\ & (\WriteReg[2]~input_o\ & \WriteReg[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WriteReg[0]~input_o\,
	datab => \ALT_INV_WriteReg[1]~input_o\,
	datac => \ALT_INV_WriteReg[2]~input_o\,
	datad => \ALT_INV_WriteReg[3]~input_o\,
	combout => \ARRAYREG~450_combout\);

\ARRAYREG~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[0]~input_o\,
	ena => \ARRAYREG~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~229_q\);

\ARRAYREG~451\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~451_combout\ = (!\WriteReg[0]~input_o\ & (\WriteReg[1]~input_o\ & (\WriteReg[2]~input_o\ & \WriteReg[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WriteReg[0]~input_o\,
	datab => \ALT_INV_WriteReg[1]~input_o\,
	datac => \ALT_INV_WriteReg[2]~input_o\,
	datad => \ALT_INV_WriteReg[3]~input_o\,
	combout => \ARRAYREG~451_combout\);

\ARRAYREG~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[0]~input_o\,
	ena => \ARRAYREG~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~245_q\);

\ARRAYREG~452\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~452_combout\ = (\WriteReg[0]~input_o\ & (\WriteReg[1]~input_o\ & (\WriteReg[2]~input_o\ & \WriteReg[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WriteReg[0]~input_o\,
	datab => \ALT_INV_WriteReg[1]~input_o\,
	datac => \ALT_INV_WriteReg[2]~input_o\,
	datad => \ALT_INV_WriteReg[3]~input_o\,
	combout => \ARRAYREG~452_combout\);

\ARRAYREG~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[0]~input_o\,
	ena => \ARRAYREG~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~261_q\);

\ARRAYREG~280\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~280_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~261_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~245_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~229_q\ 
-- ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~213_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~213_q\,
	datab => \ALT_INV_ARRAYREG~229_q\,
	datac => \ALT_INV_ARRAYREG~245_q\,
	datad => \ALT_INV_ARRAYREG~261_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~280_combout\);

\ReadReg1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReadReg1(2),
	o => \ReadReg1[2]~input_o\);

\ReadReg1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReadReg1(3),
	o => \ReadReg1[3]~input_o\);

\ARRAYREG~281\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~281_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~280_combout\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~279_combout\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( 
-- \ARRAYREG~278_combout\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~277_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~277_combout\,
	datab => \ALT_INV_ARRAYREG~278_combout\,
	datac => \ALT_INV_ARRAYREG~279_combout\,
	datad => \ALT_INV_ARRAYREG~280_combout\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~281_combout\);

\WriteData[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(1),
	o => \WriteData[1]~input_o\);

\ARRAYREG~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[1]~input_o\,
	ena => \ARRAYREG~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~22_q\);

\ARRAYREG~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[1]~input_o\,
	ena => \ARRAYREG~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~86_q\);

\ARRAYREG~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[1]~input_o\,
	ena => \ARRAYREG~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~150_q\);

\ARRAYREG~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[1]~input_o\,
	ena => \ARRAYREG~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~214_q\);

\ARRAYREG~282\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~282_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~214_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~150_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~86_q\ 
-- ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~22_q\,
	datab => \ALT_INV_ARRAYREG~86_q\,
	datac => \ALT_INV_ARRAYREG~150_q\,
	datad => \ALT_INV_ARRAYREG~214_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~282_combout\);

\ARRAYREG~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[1]~input_o\,
	ena => \ARRAYREG~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~38_q\);

\ARRAYREG~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[1]~input_o\,
	ena => \ARRAYREG~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~102_q\);

\ARRAYREG~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[1]~input_o\,
	ena => \ARRAYREG~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~166_q\);

\ARRAYREG~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[1]~input_o\,
	ena => \ARRAYREG~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~230_q\);

\ARRAYREG~283\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~283_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~230_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~166_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~102_q\ 
-- ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~38_q\,
	datab => \ALT_INV_ARRAYREG~102_q\,
	datac => \ALT_INV_ARRAYREG~166_q\,
	datad => \ALT_INV_ARRAYREG~230_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~283_combout\);

\ARRAYREG~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[1]~input_o\,
	ena => \ARRAYREG~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~54_q\);

\ARRAYREG~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[1]~input_o\,
	ena => \ARRAYREG~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~118_q\);

\ARRAYREG~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[1]~input_o\,
	ena => \ARRAYREG~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~182_q\);

\ARRAYREG~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[1]~input_o\,
	ena => \ARRAYREG~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~246_q\);

\ARRAYREG~284\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~284_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~246_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~182_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~118_q\ 
-- ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~54_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~54_q\,
	datab => \ALT_INV_ARRAYREG~118_q\,
	datac => \ALT_INV_ARRAYREG~182_q\,
	datad => \ALT_INV_ARRAYREG~246_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~284_combout\);

\ARRAYREG~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[1]~input_o\,
	ena => \ARRAYREG~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~70_q\);

\ARRAYREG~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[1]~input_o\,
	ena => \ARRAYREG~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~134_q\);

\ARRAYREG~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[1]~input_o\,
	ena => \ARRAYREG~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~198_q\);

\ARRAYREG~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[1]~input_o\,
	ena => \ARRAYREG~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~262_q\);

\ARRAYREG~285\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~285_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~262_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~198_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~134_q\ 
-- ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~70_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~70_q\,
	datab => \ALT_INV_ARRAYREG~134_q\,
	datac => \ALT_INV_ARRAYREG~198_q\,
	datad => \ALT_INV_ARRAYREG~262_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~285_combout\);

\ARRAYREG~286\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~286_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~285_combout\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~284_combout\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( 
-- \ARRAYREG~283_combout\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~282_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~282_combout\,
	datab => \ALT_INV_ARRAYREG~283_combout\,
	datac => \ALT_INV_ARRAYREG~284_combout\,
	datad => \ALT_INV_ARRAYREG~285_combout\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~286_combout\);

\WriteData[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(2),
	o => \WriteData[2]~input_o\);

\ARRAYREG~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[2]~input_o\,
	ena => \ARRAYREG~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~23_q\);

\ARRAYREG~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[2]~input_o\,
	ena => \ARRAYREG~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~39_q\);

\ARRAYREG~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[2]~input_o\,
	ena => \ARRAYREG~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~55_q\);

\ARRAYREG~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[2]~input_o\,
	ena => \ARRAYREG~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~71_q\);

\ARRAYREG~287\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~287_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~71_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~55_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~39_q\ ) 
-- ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~23_q\,
	datab => \ALT_INV_ARRAYREG~39_q\,
	datac => \ALT_INV_ARRAYREG~55_q\,
	datad => \ALT_INV_ARRAYREG~71_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~287_combout\);

\ARRAYREG~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[2]~input_o\,
	ena => \ARRAYREG~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~87_q\);

\ARRAYREG~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[2]~input_o\,
	ena => \ARRAYREG~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~103_q\);

\ARRAYREG~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[2]~input_o\,
	ena => \ARRAYREG~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~119_q\);

\ARRAYREG~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[2]~input_o\,
	ena => \ARRAYREG~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~135_q\);

\ARRAYREG~288\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~288_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~135_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~119_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~103_q\ 
-- ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~87_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~87_q\,
	datab => \ALT_INV_ARRAYREG~103_q\,
	datac => \ALT_INV_ARRAYREG~119_q\,
	datad => \ALT_INV_ARRAYREG~135_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~288_combout\);

\ARRAYREG~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[2]~input_o\,
	ena => \ARRAYREG~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~151_q\);

\ARRAYREG~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[2]~input_o\,
	ena => \ARRAYREG~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~167_q\);

\ARRAYREG~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[2]~input_o\,
	ena => \ARRAYREG~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~183_q\);

\ARRAYREG~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[2]~input_o\,
	ena => \ARRAYREG~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~199_q\);

\ARRAYREG~289\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~289_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~199_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~183_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~167_q\ 
-- ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~151_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~151_q\,
	datab => \ALT_INV_ARRAYREG~167_q\,
	datac => \ALT_INV_ARRAYREG~183_q\,
	datad => \ALT_INV_ARRAYREG~199_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~289_combout\);

\ARRAYREG~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[2]~input_o\,
	ena => \ARRAYREG~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~215_q\);

\ARRAYREG~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[2]~input_o\,
	ena => \ARRAYREG~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~231_q\);

\ARRAYREG~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[2]~input_o\,
	ena => \ARRAYREG~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~247_q\);

\ARRAYREG~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[2]~input_o\,
	ena => \ARRAYREG~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~263_q\);

\ARRAYREG~290\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~290_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~263_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~247_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~231_q\ 
-- ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~215_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~215_q\,
	datab => \ALT_INV_ARRAYREG~231_q\,
	datac => \ALT_INV_ARRAYREG~247_q\,
	datad => \ALT_INV_ARRAYREG~263_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~290_combout\);

\ARRAYREG~291\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~291_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~290_combout\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~289_combout\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( 
-- \ARRAYREG~288_combout\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~287_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~287_combout\,
	datab => \ALT_INV_ARRAYREG~288_combout\,
	datac => \ALT_INV_ARRAYREG~289_combout\,
	datad => \ALT_INV_ARRAYREG~290_combout\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~291_combout\);

\WriteData[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(3),
	o => \WriteData[3]~input_o\);

\ARRAYREG~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[3]~input_o\,
	ena => \ARRAYREG~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~24_q\);

\ARRAYREG~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[3]~input_o\,
	ena => \ARRAYREG~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~88_q\);

\ARRAYREG~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[3]~input_o\,
	ena => \ARRAYREG~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~152_q\);

\ARRAYREG~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[3]~input_o\,
	ena => \ARRAYREG~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~216_q\);

\ARRAYREG~292\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~292_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~216_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~152_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~88_q\ 
-- ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~24_q\,
	datab => \ALT_INV_ARRAYREG~88_q\,
	datac => \ALT_INV_ARRAYREG~152_q\,
	datad => \ALT_INV_ARRAYREG~216_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~292_combout\);

\ARRAYREG~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[3]~input_o\,
	ena => \ARRAYREG~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~40_q\);

\ARRAYREG~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[3]~input_o\,
	ena => \ARRAYREG~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~104_q\);

\ARRAYREG~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[3]~input_o\,
	ena => \ARRAYREG~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~168_q\);

\ARRAYREG~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[3]~input_o\,
	ena => \ARRAYREG~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~232_q\);

\ARRAYREG~293\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~293_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~232_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~168_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~104_q\ 
-- ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~40_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~40_q\,
	datab => \ALT_INV_ARRAYREG~104_q\,
	datac => \ALT_INV_ARRAYREG~168_q\,
	datad => \ALT_INV_ARRAYREG~232_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~293_combout\);

\ARRAYREG~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[3]~input_o\,
	ena => \ARRAYREG~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~56_q\);

\ARRAYREG~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[3]~input_o\,
	ena => \ARRAYREG~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~120_q\);

\ARRAYREG~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[3]~input_o\,
	ena => \ARRAYREG~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~184_q\);

\ARRAYREG~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[3]~input_o\,
	ena => \ARRAYREG~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~248_q\);

\ARRAYREG~294\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~294_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~248_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~184_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~120_q\ 
-- ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~56_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~56_q\,
	datab => \ALT_INV_ARRAYREG~120_q\,
	datac => \ALT_INV_ARRAYREG~184_q\,
	datad => \ALT_INV_ARRAYREG~248_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~294_combout\);

\ARRAYREG~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[3]~input_o\,
	ena => \ARRAYREG~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~72_q\);

\ARRAYREG~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[3]~input_o\,
	ena => \ARRAYREG~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~136_q\);

\ARRAYREG~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[3]~input_o\,
	ena => \ARRAYREG~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~200_q\);

\ARRAYREG~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[3]~input_o\,
	ena => \ARRAYREG~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~264_q\);

\ARRAYREG~295\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~295_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~264_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~200_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~136_q\ 
-- ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~72_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~72_q\,
	datab => \ALT_INV_ARRAYREG~136_q\,
	datac => \ALT_INV_ARRAYREG~200_q\,
	datad => \ALT_INV_ARRAYREG~264_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~295_combout\);

\ARRAYREG~296\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~296_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~295_combout\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~294_combout\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( 
-- \ARRAYREG~293_combout\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~292_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~292_combout\,
	datab => \ALT_INV_ARRAYREG~293_combout\,
	datac => \ALT_INV_ARRAYREG~294_combout\,
	datad => \ALT_INV_ARRAYREG~295_combout\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~296_combout\);

\WriteData[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(4),
	o => \WriteData[4]~input_o\);

\ARRAYREG~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[4]~input_o\,
	ena => \ARRAYREG~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~25_q\);

\ARRAYREG~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[4]~input_o\,
	ena => \ARRAYREG~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~41_q\);

\ARRAYREG~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[4]~input_o\,
	ena => \ARRAYREG~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~57_q\);

\ARRAYREG~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[4]~input_o\,
	ena => \ARRAYREG~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~73_q\);

\ARRAYREG~297\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~297_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~73_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~57_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~41_q\ ) 
-- ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~25_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~25_q\,
	datab => \ALT_INV_ARRAYREG~41_q\,
	datac => \ALT_INV_ARRAYREG~57_q\,
	datad => \ALT_INV_ARRAYREG~73_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~297_combout\);

\ARRAYREG~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[4]~input_o\,
	ena => \ARRAYREG~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~89_q\);

\ARRAYREG~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[4]~input_o\,
	ena => \ARRAYREG~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~105_q\);

\ARRAYREG~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[4]~input_o\,
	ena => \ARRAYREG~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~121_q\);

\ARRAYREG~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[4]~input_o\,
	ena => \ARRAYREG~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~137_q\);

\ARRAYREG~298\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~298_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~137_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~121_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~105_q\ 
-- ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~89_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~89_q\,
	datab => \ALT_INV_ARRAYREG~105_q\,
	datac => \ALT_INV_ARRAYREG~121_q\,
	datad => \ALT_INV_ARRAYREG~137_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~298_combout\);

\ARRAYREG~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[4]~input_o\,
	ena => \ARRAYREG~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~153_q\);

\ARRAYREG~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[4]~input_o\,
	ena => \ARRAYREG~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~169_q\);

\ARRAYREG~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[4]~input_o\,
	ena => \ARRAYREG~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~185_q\);

\ARRAYREG~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[4]~input_o\,
	ena => \ARRAYREG~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~201_q\);

\ARRAYREG~299\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~299_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~201_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~185_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~169_q\ 
-- ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~153_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~153_q\,
	datab => \ALT_INV_ARRAYREG~169_q\,
	datac => \ALT_INV_ARRAYREG~185_q\,
	datad => \ALT_INV_ARRAYREG~201_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~299_combout\);

\ARRAYREG~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[4]~input_o\,
	ena => \ARRAYREG~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~217_q\);

\ARRAYREG~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[4]~input_o\,
	ena => \ARRAYREG~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~233_q\);

\ARRAYREG~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[4]~input_o\,
	ena => \ARRAYREG~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~249_q\);

\ARRAYREG~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[4]~input_o\,
	ena => \ARRAYREG~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~265_q\);

\ARRAYREG~300\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~300_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~265_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~249_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~233_q\ 
-- ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~217_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~217_q\,
	datab => \ALT_INV_ARRAYREG~233_q\,
	datac => \ALT_INV_ARRAYREG~249_q\,
	datad => \ALT_INV_ARRAYREG~265_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~300_combout\);

\ARRAYREG~301\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~301_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~300_combout\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~299_combout\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( 
-- \ARRAYREG~298_combout\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~297_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~297_combout\,
	datab => \ALT_INV_ARRAYREG~298_combout\,
	datac => \ALT_INV_ARRAYREG~299_combout\,
	datad => \ALT_INV_ARRAYREG~300_combout\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~301_combout\);

\WriteData[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(5),
	o => \WriteData[5]~input_o\);

\ARRAYREG~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[5]~input_o\,
	ena => \ARRAYREG~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~26_q\);

\ARRAYREG~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[5]~input_o\,
	ena => \ARRAYREG~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~90_q\);

\ARRAYREG~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[5]~input_o\,
	ena => \ARRAYREG~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~154_q\);

\ARRAYREG~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[5]~input_o\,
	ena => \ARRAYREG~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~218_q\);

\ARRAYREG~302\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~302_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~218_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~154_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~90_q\ 
-- ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~26_q\,
	datab => \ALT_INV_ARRAYREG~90_q\,
	datac => \ALT_INV_ARRAYREG~154_q\,
	datad => \ALT_INV_ARRAYREG~218_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~302_combout\);

\ARRAYREG~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[5]~input_o\,
	ena => \ARRAYREG~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~42_q\);

\ARRAYREG~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[5]~input_o\,
	ena => \ARRAYREG~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~106_q\);

\ARRAYREG~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[5]~input_o\,
	ena => \ARRAYREG~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~170_q\);

\ARRAYREG~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[5]~input_o\,
	ena => \ARRAYREG~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~234_q\);

\ARRAYREG~303\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~303_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~234_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~170_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~106_q\ 
-- ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~42_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~42_q\,
	datab => \ALT_INV_ARRAYREG~106_q\,
	datac => \ALT_INV_ARRAYREG~170_q\,
	datad => \ALT_INV_ARRAYREG~234_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~303_combout\);

\ARRAYREG~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[5]~input_o\,
	ena => \ARRAYREG~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~58_q\);

\ARRAYREG~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[5]~input_o\,
	ena => \ARRAYREG~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~122_q\);

\ARRAYREG~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[5]~input_o\,
	ena => \ARRAYREG~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~186_q\);

\ARRAYREG~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[5]~input_o\,
	ena => \ARRAYREG~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~250_q\);

\ARRAYREG~304\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~304_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~250_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~186_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~122_q\ 
-- ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~58_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~58_q\,
	datab => \ALT_INV_ARRAYREG~122_q\,
	datac => \ALT_INV_ARRAYREG~186_q\,
	datad => \ALT_INV_ARRAYREG~250_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~304_combout\);

\ARRAYREG~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[5]~input_o\,
	ena => \ARRAYREG~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~74_q\);

\ARRAYREG~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[5]~input_o\,
	ena => \ARRAYREG~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~138_q\);

\ARRAYREG~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[5]~input_o\,
	ena => \ARRAYREG~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~202_q\);

\ARRAYREG~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[5]~input_o\,
	ena => \ARRAYREG~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~266_q\);

\ARRAYREG~305\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~305_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~266_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~202_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~138_q\ 
-- ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~74_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~74_q\,
	datab => \ALT_INV_ARRAYREG~138_q\,
	datac => \ALT_INV_ARRAYREG~202_q\,
	datad => \ALT_INV_ARRAYREG~266_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~305_combout\);

\ARRAYREG~306\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~306_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~305_combout\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~304_combout\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( 
-- \ARRAYREG~303_combout\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~302_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~302_combout\,
	datab => \ALT_INV_ARRAYREG~303_combout\,
	datac => \ALT_INV_ARRAYREG~304_combout\,
	datad => \ALT_INV_ARRAYREG~305_combout\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~306_combout\);

\WriteData[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(6),
	o => \WriteData[6]~input_o\);

\ARRAYREG~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[6]~input_o\,
	ena => \ARRAYREG~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~27_q\);

\ARRAYREG~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[6]~input_o\,
	ena => \ARRAYREG~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~43_q\);

\ARRAYREG~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[6]~input_o\,
	ena => \ARRAYREG~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~59_q\);

\ARRAYREG~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[6]~input_o\,
	ena => \ARRAYREG~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~75_q\);

\ARRAYREG~307\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~307_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~75_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~59_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~43_q\ ) 
-- ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~27_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~27_q\,
	datab => \ALT_INV_ARRAYREG~43_q\,
	datac => \ALT_INV_ARRAYREG~59_q\,
	datad => \ALT_INV_ARRAYREG~75_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~307_combout\);

\ARRAYREG~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[6]~input_o\,
	ena => \ARRAYREG~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~91_q\);

\ARRAYREG~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[6]~input_o\,
	ena => \ARRAYREG~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~107_q\);

\ARRAYREG~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[6]~input_o\,
	ena => \ARRAYREG~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~123_q\);

\ARRAYREG~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[6]~input_o\,
	ena => \ARRAYREG~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~139_q\);

\ARRAYREG~308\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~308_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~139_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~123_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~107_q\ 
-- ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~91_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~91_q\,
	datab => \ALT_INV_ARRAYREG~107_q\,
	datac => \ALT_INV_ARRAYREG~123_q\,
	datad => \ALT_INV_ARRAYREG~139_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~308_combout\);

\ARRAYREG~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[6]~input_o\,
	ena => \ARRAYREG~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~155_q\);

\ARRAYREG~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[6]~input_o\,
	ena => \ARRAYREG~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~171_q\);

\ARRAYREG~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[6]~input_o\,
	ena => \ARRAYREG~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~187_q\);

\ARRAYREG~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[6]~input_o\,
	ena => \ARRAYREG~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~203_q\);

\ARRAYREG~309\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~309_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~203_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~187_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~171_q\ 
-- ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~155_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~155_q\,
	datab => \ALT_INV_ARRAYREG~171_q\,
	datac => \ALT_INV_ARRAYREG~187_q\,
	datad => \ALT_INV_ARRAYREG~203_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~309_combout\);

\ARRAYREG~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[6]~input_o\,
	ena => \ARRAYREG~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~219_q\);

\ARRAYREG~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[6]~input_o\,
	ena => \ARRAYREG~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~235_q\);

\ARRAYREG~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[6]~input_o\,
	ena => \ARRAYREG~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~251_q\);

\ARRAYREG~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[6]~input_o\,
	ena => \ARRAYREG~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~267_q\);

\ARRAYREG~310\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~310_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~267_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~251_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~235_q\ 
-- ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~219_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~219_q\,
	datab => \ALT_INV_ARRAYREG~235_q\,
	datac => \ALT_INV_ARRAYREG~251_q\,
	datad => \ALT_INV_ARRAYREG~267_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~310_combout\);

\ARRAYREG~311\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~311_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~310_combout\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~309_combout\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( 
-- \ARRAYREG~308_combout\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~307_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~307_combout\,
	datab => \ALT_INV_ARRAYREG~308_combout\,
	datac => \ALT_INV_ARRAYREG~309_combout\,
	datad => \ALT_INV_ARRAYREG~310_combout\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~311_combout\);

\WriteData[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(7),
	o => \WriteData[7]~input_o\);

\ARRAYREG~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[7]~input_o\,
	ena => \ARRAYREG~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~28_q\);

\ARRAYREG~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[7]~input_o\,
	ena => \ARRAYREG~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~92_q\);

\ARRAYREG~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[7]~input_o\,
	ena => \ARRAYREG~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~156_q\);

\ARRAYREG~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[7]~input_o\,
	ena => \ARRAYREG~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~220_q\);

\ARRAYREG~312\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~312_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~220_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~156_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~92_q\ 
-- ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~28_q\,
	datab => \ALT_INV_ARRAYREG~92_q\,
	datac => \ALT_INV_ARRAYREG~156_q\,
	datad => \ALT_INV_ARRAYREG~220_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~312_combout\);

\ARRAYREG~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[7]~input_o\,
	ena => \ARRAYREG~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~44_q\);

\ARRAYREG~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[7]~input_o\,
	ena => \ARRAYREG~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~108_q\);

\ARRAYREG~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[7]~input_o\,
	ena => \ARRAYREG~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~172_q\);

\ARRAYREG~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[7]~input_o\,
	ena => \ARRAYREG~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~236_q\);

\ARRAYREG~313\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~313_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~236_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~172_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~108_q\ 
-- ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~44_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~44_q\,
	datab => \ALT_INV_ARRAYREG~108_q\,
	datac => \ALT_INV_ARRAYREG~172_q\,
	datad => \ALT_INV_ARRAYREG~236_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~313_combout\);

\ARRAYREG~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[7]~input_o\,
	ena => \ARRAYREG~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~60_q\);

\ARRAYREG~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[7]~input_o\,
	ena => \ARRAYREG~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~124_q\);

\ARRAYREG~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[7]~input_o\,
	ena => \ARRAYREG~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~188_q\);

\ARRAYREG~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[7]~input_o\,
	ena => \ARRAYREG~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~252_q\);

\ARRAYREG~314\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~314_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~252_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~188_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~124_q\ 
-- ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~60_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~60_q\,
	datab => \ALT_INV_ARRAYREG~124_q\,
	datac => \ALT_INV_ARRAYREG~188_q\,
	datad => \ALT_INV_ARRAYREG~252_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~314_combout\);

\ARRAYREG~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[7]~input_o\,
	ena => \ARRAYREG~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~76_q\);

\ARRAYREG~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[7]~input_o\,
	ena => \ARRAYREG~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~140_q\);

\ARRAYREG~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[7]~input_o\,
	ena => \ARRAYREG~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~204_q\);

\ARRAYREG~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[7]~input_o\,
	ena => \ARRAYREG~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~268_q\);

\ARRAYREG~315\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~315_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~268_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~204_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~140_q\ 
-- ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~76_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~76_q\,
	datab => \ALT_INV_ARRAYREG~140_q\,
	datac => \ALT_INV_ARRAYREG~204_q\,
	datad => \ALT_INV_ARRAYREG~268_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~315_combout\);

\ARRAYREG~316\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~316_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~315_combout\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~314_combout\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( 
-- \ARRAYREG~313_combout\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~312_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~312_combout\,
	datab => \ALT_INV_ARRAYREG~313_combout\,
	datac => \ALT_INV_ARRAYREG~314_combout\,
	datad => \ALT_INV_ARRAYREG~315_combout\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~316_combout\);

\WriteData[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(8),
	o => \WriteData[8]~input_o\);

\ARRAYREG~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[8]~input_o\,
	ena => \ARRAYREG~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~29_q\);

\ARRAYREG~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[8]~input_o\,
	ena => \ARRAYREG~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~45_q\);

\ARRAYREG~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[8]~input_o\,
	ena => \ARRAYREG~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~61_q\);

\ARRAYREG~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[8]~input_o\,
	ena => \ARRAYREG~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~77_q\);

\ARRAYREG~317\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~317_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~77_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~61_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~45_q\ ) 
-- ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~29_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~29_q\,
	datab => \ALT_INV_ARRAYREG~45_q\,
	datac => \ALT_INV_ARRAYREG~61_q\,
	datad => \ALT_INV_ARRAYREG~77_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~317_combout\);

\ARRAYREG~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[8]~input_o\,
	ena => \ARRAYREG~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~93_q\);

\ARRAYREG~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[8]~input_o\,
	ena => \ARRAYREG~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~109_q\);

\ARRAYREG~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[8]~input_o\,
	ena => \ARRAYREG~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~125_q\);

\ARRAYREG~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[8]~input_o\,
	ena => \ARRAYREG~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~141_q\);

\ARRAYREG~318\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~318_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~141_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~125_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~109_q\ 
-- ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~93_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~93_q\,
	datab => \ALT_INV_ARRAYREG~109_q\,
	datac => \ALT_INV_ARRAYREG~125_q\,
	datad => \ALT_INV_ARRAYREG~141_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~318_combout\);

\ARRAYREG~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[8]~input_o\,
	ena => \ARRAYREG~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~157_q\);

\ARRAYREG~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[8]~input_o\,
	ena => \ARRAYREG~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~173_q\);

\ARRAYREG~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[8]~input_o\,
	ena => \ARRAYREG~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~189_q\);

\ARRAYREG~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[8]~input_o\,
	ena => \ARRAYREG~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~205_q\);

\ARRAYREG~319\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~319_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~205_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~189_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~173_q\ 
-- ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~157_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~157_q\,
	datab => \ALT_INV_ARRAYREG~173_q\,
	datac => \ALT_INV_ARRAYREG~189_q\,
	datad => \ALT_INV_ARRAYREG~205_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~319_combout\);

\ARRAYREG~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[8]~input_o\,
	ena => \ARRAYREG~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~221_q\);

\ARRAYREG~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[8]~input_o\,
	ena => \ARRAYREG~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~237_q\);

\ARRAYREG~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[8]~input_o\,
	ena => \ARRAYREG~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~253_q\);

\ARRAYREG~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[8]~input_o\,
	ena => \ARRAYREG~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~269_q\);

\ARRAYREG~320\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~320_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~269_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~253_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~237_q\ 
-- ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~221_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~221_q\,
	datab => \ALT_INV_ARRAYREG~237_q\,
	datac => \ALT_INV_ARRAYREG~253_q\,
	datad => \ALT_INV_ARRAYREG~269_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~320_combout\);

\ARRAYREG~321\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~321_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~320_combout\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~319_combout\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( 
-- \ARRAYREG~318_combout\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~317_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~317_combout\,
	datab => \ALT_INV_ARRAYREG~318_combout\,
	datac => \ALT_INV_ARRAYREG~319_combout\,
	datad => \ALT_INV_ARRAYREG~320_combout\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~321_combout\);

\WriteData[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(9),
	o => \WriteData[9]~input_o\);

\ARRAYREG~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[9]~input_o\,
	ena => \ARRAYREG~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~30_q\);

\ARRAYREG~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[9]~input_o\,
	ena => \ARRAYREG~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~94_q\);

\ARRAYREG~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[9]~input_o\,
	ena => \ARRAYREG~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~158_q\);

\ARRAYREG~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[9]~input_o\,
	ena => \ARRAYREG~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~222_q\);

\ARRAYREG~322\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~322_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~222_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~158_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~94_q\ 
-- ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~30_q\,
	datab => \ALT_INV_ARRAYREG~94_q\,
	datac => \ALT_INV_ARRAYREG~158_q\,
	datad => \ALT_INV_ARRAYREG~222_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~322_combout\);

\ARRAYREG~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[9]~input_o\,
	ena => \ARRAYREG~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~46_q\);

\ARRAYREG~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[9]~input_o\,
	ena => \ARRAYREG~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~110_q\);

\ARRAYREG~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[9]~input_o\,
	ena => \ARRAYREG~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~174_q\);

\ARRAYREG~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[9]~input_o\,
	ena => \ARRAYREG~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~238_q\);

\ARRAYREG~323\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~323_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~238_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~174_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~110_q\ 
-- ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~46_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~46_q\,
	datab => \ALT_INV_ARRAYREG~110_q\,
	datac => \ALT_INV_ARRAYREG~174_q\,
	datad => \ALT_INV_ARRAYREG~238_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~323_combout\);

\ARRAYREG~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[9]~input_o\,
	ena => \ARRAYREG~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~62_q\);

\ARRAYREG~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[9]~input_o\,
	ena => \ARRAYREG~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~126_q\);

\ARRAYREG~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[9]~input_o\,
	ena => \ARRAYREG~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~190_q\);

\ARRAYREG~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[9]~input_o\,
	ena => \ARRAYREG~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~254_q\);

\ARRAYREG~324\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~324_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~254_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~190_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~126_q\ 
-- ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~62_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~62_q\,
	datab => \ALT_INV_ARRAYREG~126_q\,
	datac => \ALT_INV_ARRAYREG~190_q\,
	datad => \ALT_INV_ARRAYREG~254_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~324_combout\);

\ARRAYREG~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[9]~input_o\,
	ena => \ARRAYREG~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~78_q\);

\ARRAYREG~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[9]~input_o\,
	ena => \ARRAYREG~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~142_q\);

\ARRAYREG~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[9]~input_o\,
	ena => \ARRAYREG~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~206_q\);

\ARRAYREG~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[9]~input_o\,
	ena => \ARRAYREG~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~270_q\);

\ARRAYREG~325\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~325_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~270_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~206_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~142_q\ 
-- ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~78_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~78_q\,
	datab => \ALT_INV_ARRAYREG~142_q\,
	datac => \ALT_INV_ARRAYREG~206_q\,
	datad => \ALT_INV_ARRAYREG~270_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~325_combout\);

\ARRAYREG~326\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~326_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~325_combout\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~324_combout\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( 
-- \ARRAYREG~323_combout\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~322_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~322_combout\,
	datab => \ALT_INV_ARRAYREG~323_combout\,
	datac => \ALT_INV_ARRAYREG~324_combout\,
	datad => \ALT_INV_ARRAYREG~325_combout\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~326_combout\);

\WriteData[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(10),
	o => \WriteData[10]~input_o\);

\ARRAYREG~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[10]~input_o\,
	ena => \ARRAYREG~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~31_q\);

\ARRAYREG~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[10]~input_o\,
	ena => \ARRAYREG~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~47_q\);

\ARRAYREG~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[10]~input_o\,
	ena => \ARRAYREG~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~63_q\);

\ARRAYREG~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[10]~input_o\,
	ena => \ARRAYREG~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~79_q\);

\ARRAYREG~327\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~327_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~79_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~63_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~47_q\ ) 
-- ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~31_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~31_q\,
	datab => \ALT_INV_ARRAYREG~47_q\,
	datac => \ALT_INV_ARRAYREG~63_q\,
	datad => \ALT_INV_ARRAYREG~79_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~327_combout\);

\ARRAYREG~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[10]~input_o\,
	ena => \ARRAYREG~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~95_q\);

\ARRAYREG~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[10]~input_o\,
	ena => \ARRAYREG~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~111_q\);

\ARRAYREG~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[10]~input_o\,
	ena => \ARRAYREG~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~127_q\);

\ARRAYREG~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[10]~input_o\,
	ena => \ARRAYREG~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~143_q\);

\ARRAYREG~328\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~328_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~143_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~127_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~111_q\ 
-- ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~95_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~95_q\,
	datab => \ALT_INV_ARRAYREG~111_q\,
	datac => \ALT_INV_ARRAYREG~127_q\,
	datad => \ALT_INV_ARRAYREG~143_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~328_combout\);

\ARRAYREG~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[10]~input_o\,
	ena => \ARRAYREG~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~159_q\);

\ARRAYREG~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[10]~input_o\,
	ena => \ARRAYREG~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~175_q\);

\ARRAYREG~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[10]~input_o\,
	ena => \ARRAYREG~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~191_q\);

\ARRAYREG~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[10]~input_o\,
	ena => \ARRAYREG~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~207_q\);

\ARRAYREG~329\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~329_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~207_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~191_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~175_q\ 
-- ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~159_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~159_q\,
	datab => \ALT_INV_ARRAYREG~175_q\,
	datac => \ALT_INV_ARRAYREG~191_q\,
	datad => \ALT_INV_ARRAYREG~207_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~329_combout\);

\ARRAYREG~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[10]~input_o\,
	ena => \ARRAYREG~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~223_q\);

\ARRAYREG~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[10]~input_o\,
	ena => \ARRAYREG~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~239_q\);

\ARRAYREG~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[10]~input_o\,
	ena => \ARRAYREG~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~255_q\);

\ARRAYREG~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[10]~input_o\,
	ena => \ARRAYREG~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~271_q\);

\ARRAYREG~330\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~330_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~271_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~255_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~239_q\ 
-- ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~223_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~223_q\,
	datab => \ALT_INV_ARRAYREG~239_q\,
	datac => \ALT_INV_ARRAYREG~255_q\,
	datad => \ALT_INV_ARRAYREG~271_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~330_combout\);

\ARRAYREG~331\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~331_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~330_combout\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~329_combout\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( 
-- \ARRAYREG~328_combout\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~327_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~327_combout\,
	datab => \ALT_INV_ARRAYREG~328_combout\,
	datac => \ALT_INV_ARRAYREG~329_combout\,
	datad => \ALT_INV_ARRAYREG~330_combout\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~331_combout\);

\WriteData[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(11),
	o => \WriteData[11]~input_o\);

\ARRAYREG~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[11]~input_o\,
	ena => \ARRAYREG~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~32_q\);

\ARRAYREG~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[11]~input_o\,
	ena => \ARRAYREG~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~96_q\);

\ARRAYREG~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[11]~input_o\,
	ena => \ARRAYREG~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~160_q\);

\ARRAYREG~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[11]~input_o\,
	ena => \ARRAYREG~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~224_q\);

\ARRAYREG~332\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~332_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~224_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~160_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~96_q\ 
-- ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~32_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~32_q\,
	datab => \ALT_INV_ARRAYREG~96_q\,
	datac => \ALT_INV_ARRAYREG~160_q\,
	datad => \ALT_INV_ARRAYREG~224_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~332_combout\);

\ARRAYREG~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[11]~input_o\,
	ena => \ARRAYREG~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~48_q\);

\ARRAYREG~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[11]~input_o\,
	ena => \ARRAYREG~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~112_q\);

\ARRAYREG~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[11]~input_o\,
	ena => \ARRAYREG~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~176_q\);

\ARRAYREG~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[11]~input_o\,
	ena => \ARRAYREG~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~240_q\);

\ARRAYREG~333\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~333_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~240_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~176_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~112_q\ 
-- ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~48_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~48_q\,
	datab => \ALT_INV_ARRAYREG~112_q\,
	datac => \ALT_INV_ARRAYREG~176_q\,
	datad => \ALT_INV_ARRAYREG~240_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~333_combout\);

\ARRAYREG~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[11]~input_o\,
	ena => \ARRAYREG~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~64_q\);

\ARRAYREG~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[11]~input_o\,
	ena => \ARRAYREG~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~128_q\);

\ARRAYREG~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[11]~input_o\,
	ena => \ARRAYREG~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~192_q\);

\ARRAYREG~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[11]~input_o\,
	ena => \ARRAYREG~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~256_q\);

\ARRAYREG~334\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~334_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~256_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~192_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~128_q\ 
-- ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~64_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~64_q\,
	datab => \ALT_INV_ARRAYREG~128_q\,
	datac => \ALT_INV_ARRAYREG~192_q\,
	datad => \ALT_INV_ARRAYREG~256_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~334_combout\);

\ARRAYREG~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[11]~input_o\,
	ena => \ARRAYREG~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~80_q\);

\ARRAYREG~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[11]~input_o\,
	ena => \ARRAYREG~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~144_q\);

\ARRAYREG~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[11]~input_o\,
	ena => \ARRAYREG~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~208_q\);

\ARRAYREG~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[11]~input_o\,
	ena => \ARRAYREG~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~272_q\);

\ARRAYREG~335\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~335_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~272_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~208_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~144_q\ 
-- ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~80_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~80_q\,
	datab => \ALT_INV_ARRAYREG~144_q\,
	datac => \ALT_INV_ARRAYREG~208_q\,
	datad => \ALT_INV_ARRAYREG~272_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~335_combout\);

\ARRAYREG~336\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~336_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~335_combout\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~334_combout\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( 
-- \ARRAYREG~333_combout\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~332_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~332_combout\,
	datab => \ALT_INV_ARRAYREG~333_combout\,
	datac => \ALT_INV_ARRAYREG~334_combout\,
	datad => \ALT_INV_ARRAYREG~335_combout\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~336_combout\);

\WriteData[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(12),
	o => \WriteData[12]~input_o\);

\ARRAYREG~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[12]~input_o\,
	ena => \ARRAYREG~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~33_q\);

\ARRAYREG~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[12]~input_o\,
	ena => \ARRAYREG~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~49_q\);

\ARRAYREG~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[12]~input_o\,
	ena => \ARRAYREG~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~65_q\);

\ARRAYREG~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[12]~input_o\,
	ena => \ARRAYREG~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~81_q\);

\ARRAYREG~337\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~337_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~81_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~65_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~49_q\ ) 
-- ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~33_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~33_q\,
	datab => \ALT_INV_ARRAYREG~49_q\,
	datac => \ALT_INV_ARRAYREG~65_q\,
	datad => \ALT_INV_ARRAYREG~81_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~337_combout\);

\ARRAYREG~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[12]~input_o\,
	ena => \ARRAYREG~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~97_q\);

\ARRAYREG~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[12]~input_o\,
	ena => \ARRAYREG~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~113_q\);

\ARRAYREG~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[12]~input_o\,
	ena => \ARRAYREG~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~129_q\);

\ARRAYREG~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[12]~input_o\,
	ena => \ARRAYREG~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~145_q\);

\ARRAYREG~338\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~338_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~145_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~129_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~113_q\ 
-- ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~97_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~97_q\,
	datab => \ALT_INV_ARRAYREG~113_q\,
	datac => \ALT_INV_ARRAYREG~129_q\,
	datad => \ALT_INV_ARRAYREG~145_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~338_combout\);

\ARRAYREG~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[12]~input_o\,
	ena => \ARRAYREG~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~161_q\);

\ARRAYREG~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[12]~input_o\,
	ena => \ARRAYREG~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~177_q\);

\ARRAYREG~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[12]~input_o\,
	ena => \ARRAYREG~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~193_q\);

\ARRAYREG~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[12]~input_o\,
	ena => \ARRAYREG~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~209_q\);

\ARRAYREG~339\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~339_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~209_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~193_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~177_q\ 
-- ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~161_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~161_q\,
	datab => \ALT_INV_ARRAYREG~177_q\,
	datac => \ALT_INV_ARRAYREG~193_q\,
	datad => \ALT_INV_ARRAYREG~209_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~339_combout\);

\ARRAYREG~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[12]~input_o\,
	ena => \ARRAYREG~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~225_q\);

\ARRAYREG~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[12]~input_o\,
	ena => \ARRAYREG~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~241_q\);

\ARRAYREG~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[12]~input_o\,
	ena => \ARRAYREG~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~257_q\);

\ARRAYREG~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[12]~input_o\,
	ena => \ARRAYREG~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~273_q\);

\ARRAYREG~340\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~340_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~273_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~257_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~241_q\ 
-- ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~225_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~225_q\,
	datab => \ALT_INV_ARRAYREG~241_q\,
	datac => \ALT_INV_ARRAYREG~257_q\,
	datad => \ALT_INV_ARRAYREG~273_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~340_combout\);

\ARRAYREG~341\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~341_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~340_combout\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~339_combout\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( 
-- \ARRAYREG~338_combout\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~337_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~337_combout\,
	datab => \ALT_INV_ARRAYREG~338_combout\,
	datac => \ALT_INV_ARRAYREG~339_combout\,
	datad => \ALT_INV_ARRAYREG~340_combout\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~341_combout\);

\WriteData[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(13),
	o => \WriteData[13]~input_o\);

\ARRAYREG~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[13]~input_o\,
	ena => \ARRAYREG~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~34_q\);

\ARRAYREG~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[13]~input_o\,
	ena => \ARRAYREG~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~98_q\);

\ARRAYREG~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[13]~input_o\,
	ena => \ARRAYREG~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~162_q\);

\ARRAYREG~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[13]~input_o\,
	ena => \ARRAYREG~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~226_q\);

\ARRAYREG~342\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~342_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~226_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~162_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~98_q\ 
-- ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~34_q\,
	datab => \ALT_INV_ARRAYREG~98_q\,
	datac => \ALT_INV_ARRAYREG~162_q\,
	datad => \ALT_INV_ARRAYREG~226_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~342_combout\);

\ARRAYREG~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[13]~input_o\,
	ena => \ARRAYREG~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~50_q\);

\ARRAYREG~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[13]~input_o\,
	ena => \ARRAYREG~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~114_q\);

\ARRAYREG~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[13]~input_o\,
	ena => \ARRAYREG~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~178_q\);

\ARRAYREG~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[13]~input_o\,
	ena => \ARRAYREG~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~242_q\);

\ARRAYREG~343\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~343_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~242_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~178_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~114_q\ 
-- ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~50_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~50_q\,
	datab => \ALT_INV_ARRAYREG~114_q\,
	datac => \ALT_INV_ARRAYREG~178_q\,
	datad => \ALT_INV_ARRAYREG~242_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~343_combout\);

\ARRAYREG~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[13]~input_o\,
	ena => \ARRAYREG~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~66_q\);

\ARRAYREG~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[13]~input_o\,
	ena => \ARRAYREG~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~130_q\);

\ARRAYREG~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[13]~input_o\,
	ena => \ARRAYREG~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~194_q\);

\ARRAYREG~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[13]~input_o\,
	ena => \ARRAYREG~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~258_q\);

\ARRAYREG~344\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~344_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~258_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~194_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~130_q\ 
-- ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~66_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~66_q\,
	datab => \ALT_INV_ARRAYREG~130_q\,
	datac => \ALT_INV_ARRAYREG~194_q\,
	datad => \ALT_INV_ARRAYREG~258_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~344_combout\);

\ARRAYREG~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[13]~input_o\,
	ena => \ARRAYREG~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~82_q\);

\ARRAYREG~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[13]~input_o\,
	ena => \ARRAYREG~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~146_q\);

\ARRAYREG~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[13]~input_o\,
	ena => \ARRAYREG~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~210_q\);

\ARRAYREG~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[13]~input_o\,
	ena => \ARRAYREG~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~274_q\);

\ARRAYREG~345\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~345_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~274_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~210_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~146_q\ 
-- ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~82_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~82_q\,
	datab => \ALT_INV_ARRAYREG~146_q\,
	datac => \ALT_INV_ARRAYREG~210_q\,
	datad => \ALT_INV_ARRAYREG~274_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~345_combout\);

\ARRAYREG~346\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~346_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~345_combout\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~344_combout\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( 
-- \ARRAYREG~343_combout\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~342_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~342_combout\,
	datab => \ALT_INV_ARRAYREG~343_combout\,
	datac => \ALT_INV_ARRAYREG~344_combout\,
	datad => \ALT_INV_ARRAYREG~345_combout\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~346_combout\);

\WriteData[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(14),
	o => \WriteData[14]~input_o\);

\ARRAYREG~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[14]~input_o\,
	ena => \ARRAYREG~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~35_q\);

\ARRAYREG~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[14]~input_o\,
	ena => \ARRAYREG~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~51_q\);

\ARRAYREG~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[14]~input_o\,
	ena => \ARRAYREG~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~67_q\);

\ARRAYREG~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[14]~input_o\,
	ena => \ARRAYREG~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~83_q\);

\ARRAYREG~347\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~347_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~83_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~67_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~51_q\ ) 
-- ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~35_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~35_q\,
	datab => \ALT_INV_ARRAYREG~51_q\,
	datac => \ALT_INV_ARRAYREG~67_q\,
	datad => \ALT_INV_ARRAYREG~83_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~347_combout\);

\ARRAYREG~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[14]~input_o\,
	ena => \ARRAYREG~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~99_q\);

\ARRAYREG~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[14]~input_o\,
	ena => \ARRAYREG~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~115_q\);

\ARRAYREG~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[14]~input_o\,
	ena => \ARRAYREG~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~131_q\);

\ARRAYREG~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[14]~input_o\,
	ena => \ARRAYREG~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~147_q\);

\ARRAYREG~348\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~348_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~147_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~131_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~115_q\ 
-- ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~99_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~99_q\,
	datab => \ALT_INV_ARRAYREG~115_q\,
	datac => \ALT_INV_ARRAYREG~131_q\,
	datad => \ALT_INV_ARRAYREG~147_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~348_combout\);

\ARRAYREG~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[14]~input_o\,
	ena => \ARRAYREG~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~163_q\);

\ARRAYREG~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[14]~input_o\,
	ena => \ARRAYREG~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~179_q\);

\ARRAYREG~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[14]~input_o\,
	ena => \ARRAYREG~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~195_q\);

\ARRAYREG~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[14]~input_o\,
	ena => \ARRAYREG~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~211_q\);

\ARRAYREG~349\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~349_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~211_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~195_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~179_q\ 
-- ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~163_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~163_q\,
	datab => \ALT_INV_ARRAYREG~179_q\,
	datac => \ALT_INV_ARRAYREG~195_q\,
	datad => \ALT_INV_ARRAYREG~211_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~349_combout\);

\ARRAYREG~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[14]~input_o\,
	ena => \ARRAYREG~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~227_q\);

\ARRAYREG~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[14]~input_o\,
	ena => \ARRAYREG~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~243_q\);

\ARRAYREG~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[14]~input_o\,
	ena => \ARRAYREG~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~259_q\);

\ARRAYREG~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[14]~input_o\,
	ena => \ARRAYREG~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~275_q\);

\ARRAYREG~350\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~350_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~275_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~259_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~243_q\ 
-- ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~227_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~227_q\,
	datab => \ALT_INV_ARRAYREG~243_q\,
	datac => \ALT_INV_ARRAYREG~259_q\,
	datad => \ALT_INV_ARRAYREG~275_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~350_combout\);

\ARRAYREG~351\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~351_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~350_combout\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~349_combout\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( 
-- \ARRAYREG~348_combout\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~347_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~347_combout\,
	datab => \ALT_INV_ARRAYREG~348_combout\,
	datac => \ALT_INV_ARRAYREG~349_combout\,
	datad => \ALT_INV_ARRAYREG~350_combout\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~351_combout\);

\WriteData[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(15),
	o => \WriteData[15]~input_o\);

\ARRAYREG~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[15]~input_o\,
	ena => \ARRAYREG~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~36_q\);

\ARRAYREG~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[15]~input_o\,
	ena => \ARRAYREG~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~100_q\);

\ARRAYREG~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[15]~input_o\,
	ena => \ARRAYREG~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~164_q\);

\ARRAYREG~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[15]~input_o\,
	ena => \ARRAYREG~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~228_q\);

\ARRAYREG~352\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~352_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~228_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~164_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~100_q\ 
-- ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~36_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~36_q\,
	datab => \ALT_INV_ARRAYREG~100_q\,
	datac => \ALT_INV_ARRAYREG~164_q\,
	datad => \ALT_INV_ARRAYREG~228_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~352_combout\);

\ARRAYREG~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[15]~input_o\,
	ena => \ARRAYREG~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~52_q\);

\ARRAYREG~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[15]~input_o\,
	ena => \ARRAYREG~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~116_q\);

\ARRAYREG~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[15]~input_o\,
	ena => \ARRAYREG~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~180_q\);

\ARRAYREG~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[15]~input_o\,
	ena => \ARRAYREG~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~244_q\);

\ARRAYREG~353\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~353_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~244_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~180_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~116_q\ 
-- ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~52_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~52_q\,
	datab => \ALT_INV_ARRAYREG~116_q\,
	datac => \ALT_INV_ARRAYREG~180_q\,
	datad => \ALT_INV_ARRAYREG~244_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~353_combout\);

\ARRAYREG~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[15]~input_o\,
	ena => \ARRAYREG~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~68_q\);

\ARRAYREG~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[15]~input_o\,
	ena => \ARRAYREG~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~132_q\);

\ARRAYREG~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[15]~input_o\,
	ena => \ARRAYREG~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~196_q\);

\ARRAYREG~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[15]~input_o\,
	ena => \ARRAYREG~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~260_q\);

\ARRAYREG~354\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~354_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~260_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~196_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~132_q\ 
-- ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~68_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~68_q\,
	datab => \ALT_INV_ARRAYREG~132_q\,
	datac => \ALT_INV_ARRAYREG~196_q\,
	datad => \ALT_INV_ARRAYREG~260_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~354_combout\);

\ARRAYREG~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[15]~input_o\,
	ena => \ARRAYREG~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~84_q\);

\ARRAYREG~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[15]~input_o\,
	ena => \ARRAYREG~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~148_q\);

\ARRAYREG~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[15]~input_o\,
	ena => \ARRAYREG~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~212_q\);

\ARRAYREG~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[15]~input_o\,
	ena => \ARRAYREG~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ARRAYREG~276_q\);

\ARRAYREG~355\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~355_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~276_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \ARRAYREG~212_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~148_q\ 
-- ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \ARRAYREG~84_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~84_q\,
	datab => \ALT_INV_ARRAYREG~148_q\,
	datac => \ALT_INV_ARRAYREG~212_q\,
	datad => \ALT_INV_ARRAYREG~276_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \ARRAYREG~355_combout\);

\ARRAYREG~356\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~356_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~355_combout\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \ARRAYREG~354_combout\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( 
-- \ARRAYREG~353_combout\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \ARRAYREG~352_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~352_combout\,
	datab => \ALT_INV_ARRAYREG~353_combout\,
	datac => \ALT_INV_ARRAYREG~354_combout\,
	datad => \ALT_INV_ARRAYREG~355_combout\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \ARRAYREG~356_combout\);

\ReadReg2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReadReg2(0),
	o => \ReadReg2[0]~input_o\);

\ReadReg2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReadReg2(1),
	o => \ReadReg2[1]~input_o\);

\ARRAYREG~357\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~357_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~69_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~53_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~37_q\ ) 
-- ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~21_q\,
	datab => \ALT_INV_ARRAYREG~37_q\,
	datac => \ALT_INV_ARRAYREG~53_q\,
	datad => \ALT_INV_ARRAYREG~69_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~357_combout\);

\ARRAYREG~358\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~358_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~133_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~117_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~101_q\ 
-- ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~85_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~85_q\,
	datab => \ALT_INV_ARRAYREG~101_q\,
	datac => \ALT_INV_ARRAYREG~117_q\,
	datad => \ALT_INV_ARRAYREG~133_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~358_combout\);

\ARRAYREG~359\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~359_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~197_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~181_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~165_q\ 
-- ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~149_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~149_q\,
	datab => \ALT_INV_ARRAYREG~165_q\,
	datac => \ALT_INV_ARRAYREG~181_q\,
	datad => \ALT_INV_ARRAYREG~197_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~359_combout\);

\ARRAYREG~360\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~360_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~261_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~245_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~229_q\ 
-- ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~213_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~213_q\,
	datab => \ALT_INV_ARRAYREG~229_q\,
	datac => \ALT_INV_ARRAYREG~245_q\,
	datad => \ALT_INV_ARRAYREG~261_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~360_combout\);

\ReadReg2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReadReg2(2),
	o => \ReadReg2[2]~input_o\);

\ReadReg2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReadReg2(3),
	o => \ReadReg2[3]~input_o\);

\ARRAYREG~361\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~361_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~360_combout\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~359_combout\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( 
-- \ARRAYREG~358_combout\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~357_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~357_combout\,
	datab => \ALT_INV_ARRAYREG~358_combout\,
	datac => \ALT_INV_ARRAYREG~359_combout\,
	datad => \ALT_INV_ARRAYREG~360_combout\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~361_combout\);

\ARRAYREG~362\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~362_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~214_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~150_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~86_q\ 
-- ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~22_q\,
	datab => \ALT_INV_ARRAYREG~86_q\,
	datac => \ALT_INV_ARRAYREG~150_q\,
	datad => \ALT_INV_ARRAYREG~214_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~362_combout\);

\ARRAYREG~363\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~363_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~230_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~166_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~102_q\ 
-- ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~38_q\,
	datab => \ALT_INV_ARRAYREG~102_q\,
	datac => \ALT_INV_ARRAYREG~166_q\,
	datad => \ALT_INV_ARRAYREG~230_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~363_combout\);

\ARRAYREG~364\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~364_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~246_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~182_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~118_q\ 
-- ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~54_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~54_q\,
	datab => \ALT_INV_ARRAYREG~118_q\,
	datac => \ALT_INV_ARRAYREG~182_q\,
	datad => \ALT_INV_ARRAYREG~246_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~364_combout\);

\ARRAYREG~365\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~365_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~262_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~198_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~134_q\ 
-- ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~70_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~70_q\,
	datab => \ALT_INV_ARRAYREG~134_q\,
	datac => \ALT_INV_ARRAYREG~198_q\,
	datad => \ALT_INV_ARRAYREG~262_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~365_combout\);

\ARRAYREG~366\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~366_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~365_combout\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~364_combout\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( 
-- \ARRAYREG~363_combout\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~362_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~362_combout\,
	datab => \ALT_INV_ARRAYREG~363_combout\,
	datac => \ALT_INV_ARRAYREG~364_combout\,
	datad => \ALT_INV_ARRAYREG~365_combout\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~366_combout\);

\ARRAYREG~367\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~367_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~71_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~55_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~39_q\ ) 
-- ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~23_q\,
	datab => \ALT_INV_ARRAYREG~39_q\,
	datac => \ALT_INV_ARRAYREG~55_q\,
	datad => \ALT_INV_ARRAYREG~71_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~367_combout\);

\ARRAYREG~368\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~368_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~135_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~119_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~103_q\ 
-- ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~87_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~87_q\,
	datab => \ALT_INV_ARRAYREG~103_q\,
	datac => \ALT_INV_ARRAYREG~119_q\,
	datad => \ALT_INV_ARRAYREG~135_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~368_combout\);

\ARRAYREG~369\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~369_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~199_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~183_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~167_q\ 
-- ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~151_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~151_q\,
	datab => \ALT_INV_ARRAYREG~167_q\,
	datac => \ALT_INV_ARRAYREG~183_q\,
	datad => \ALT_INV_ARRAYREG~199_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~369_combout\);

\ARRAYREG~370\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~370_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~263_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~247_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~231_q\ 
-- ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~215_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~215_q\,
	datab => \ALT_INV_ARRAYREG~231_q\,
	datac => \ALT_INV_ARRAYREG~247_q\,
	datad => \ALT_INV_ARRAYREG~263_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~370_combout\);

\ARRAYREG~371\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~371_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~370_combout\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~369_combout\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( 
-- \ARRAYREG~368_combout\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~367_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~367_combout\,
	datab => \ALT_INV_ARRAYREG~368_combout\,
	datac => \ALT_INV_ARRAYREG~369_combout\,
	datad => \ALT_INV_ARRAYREG~370_combout\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~371_combout\);

\ARRAYREG~372\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~372_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~216_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~152_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~88_q\ 
-- ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~24_q\,
	datab => \ALT_INV_ARRAYREG~88_q\,
	datac => \ALT_INV_ARRAYREG~152_q\,
	datad => \ALT_INV_ARRAYREG~216_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~372_combout\);

\ARRAYREG~373\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~373_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~232_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~168_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~104_q\ 
-- ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~40_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~40_q\,
	datab => \ALT_INV_ARRAYREG~104_q\,
	datac => \ALT_INV_ARRAYREG~168_q\,
	datad => \ALT_INV_ARRAYREG~232_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~373_combout\);

\ARRAYREG~374\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~374_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~248_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~184_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~120_q\ 
-- ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~56_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~56_q\,
	datab => \ALT_INV_ARRAYREG~120_q\,
	datac => \ALT_INV_ARRAYREG~184_q\,
	datad => \ALT_INV_ARRAYREG~248_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~374_combout\);

\ARRAYREG~375\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~375_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~264_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~200_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~136_q\ 
-- ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~72_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~72_q\,
	datab => \ALT_INV_ARRAYREG~136_q\,
	datac => \ALT_INV_ARRAYREG~200_q\,
	datad => \ALT_INV_ARRAYREG~264_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~375_combout\);

\ARRAYREG~376\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~376_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~375_combout\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~374_combout\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( 
-- \ARRAYREG~373_combout\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~372_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~372_combout\,
	datab => \ALT_INV_ARRAYREG~373_combout\,
	datac => \ALT_INV_ARRAYREG~374_combout\,
	datad => \ALT_INV_ARRAYREG~375_combout\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~376_combout\);

\ARRAYREG~377\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~377_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~73_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~57_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~41_q\ ) 
-- ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~25_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~25_q\,
	datab => \ALT_INV_ARRAYREG~41_q\,
	datac => \ALT_INV_ARRAYREG~57_q\,
	datad => \ALT_INV_ARRAYREG~73_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~377_combout\);

\ARRAYREG~378\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~378_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~137_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~121_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~105_q\ 
-- ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~89_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~89_q\,
	datab => \ALT_INV_ARRAYREG~105_q\,
	datac => \ALT_INV_ARRAYREG~121_q\,
	datad => \ALT_INV_ARRAYREG~137_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~378_combout\);

\ARRAYREG~379\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~379_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~201_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~185_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~169_q\ 
-- ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~153_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~153_q\,
	datab => \ALT_INV_ARRAYREG~169_q\,
	datac => \ALT_INV_ARRAYREG~185_q\,
	datad => \ALT_INV_ARRAYREG~201_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~379_combout\);

\ARRAYREG~380\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~380_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~265_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~249_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~233_q\ 
-- ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~217_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~217_q\,
	datab => \ALT_INV_ARRAYREG~233_q\,
	datac => \ALT_INV_ARRAYREG~249_q\,
	datad => \ALT_INV_ARRAYREG~265_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~380_combout\);

\ARRAYREG~381\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~381_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~380_combout\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~379_combout\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( 
-- \ARRAYREG~378_combout\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~377_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~377_combout\,
	datab => \ALT_INV_ARRAYREG~378_combout\,
	datac => \ALT_INV_ARRAYREG~379_combout\,
	datad => \ALT_INV_ARRAYREG~380_combout\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~381_combout\);

\ARRAYREG~382\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~382_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~218_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~154_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~90_q\ 
-- ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~26_q\,
	datab => \ALT_INV_ARRAYREG~90_q\,
	datac => \ALT_INV_ARRAYREG~154_q\,
	datad => \ALT_INV_ARRAYREG~218_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~382_combout\);

\ARRAYREG~383\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~383_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~234_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~170_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~106_q\ 
-- ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~42_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~42_q\,
	datab => \ALT_INV_ARRAYREG~106_q\,
	datac => \ALT_INV_ARRAYREG~170_q\,
	datad => \ALT_INV_ARRAYREG~234_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~383_combout\);

\ARRAYREG~384\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~384_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~250_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~186_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~122_q\ 
-- ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~58_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~58_q\,
	datab => \ALT_INV_ARRAYREG~122_q\,
	datac => \ALT_INV_ARRAYREG~186_q\,
	datad => \ALT_INV_ARRAYREG~250_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~384_combout\);

\ARRAYREG~385\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~385_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~266_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~202_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~138_q\ 
-- ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~74_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~74_q\,
	datab => \ALT_INV_ARRAYREG~138_q\,
	datac => \ALT_INV_ARRAYREG~202_q\,
	datad => \ALT_INV_ARRAYREG~266_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~385_combout\);

\ARRAYREG~386\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~386_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~385_combout\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~384_combout\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( 
-- \ARRAYREG~383_combout\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~382_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~382_combout\,
	datab => \ALT_INV_ARRAYREG~383_combout\,
	datac => \ALT_INV_ARRAYREG~384_combout\,
	datad => \ALT_INV_ARRAYREG~385_combout\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~386_combout\);

\ARRAYREG~387\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~387_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~75_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~59_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~43_q\ ) 
-- ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~27_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~27_q\,
	datab => \ALT_INV_ARRAYREG~43_q\,
	datac => \ALT_INV_ARRAYREG~59_q\,
	datad => \ALT_INV_ARRAYREG~75_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~387_combout\);

\ARRAYREG~388\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~388_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~139_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~123_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~107_q\ 
-- ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~91_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~91_q\,
	datab => \ALT_INV_ARRAYREG~107_q\,
	datac => \ALT_INV_ARRAYREG~123_q\,
	datad => \ALT_INV_ARRAYREG~139_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~388_combout\);

\ARRAYREG~389\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~389_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~203_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~187_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~171_q\ 
-- ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~155_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~155_q\,
	datab => \ALT_INV_ARRAYREG~171_q\,
	datac => \ALT_INV_ARRAYREG~187_q\,
	datad => \ALT_INV_ARRAYREG~203_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~389_combout\);

\ARRAYREG~390\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~390_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~267_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~251_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~235_q\ 
-- ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~219_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~219_q\,
	datab => \ALT_INV_ARRAYREG~235_q\,
	datac => \ALT_INV_ARRAYREG~251_q\,
	datad => \ALT_INV_ARRAYREG~267_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~390_combout\);

\ARRAYREG~391\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~391_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~390_combout\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~389_combout\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( 
-- \ARRAYREG~388_combout\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~387_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~387_combout\,
	datab => \ALT_INV_ARRAYREG~388_combout\,
	datac => \ALT_INV_ARRAYREG~389_combout\,
	datad => \ALT_INV_ARRAYREG~390_combout\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~391_combout\);

\ARRAYREG~392\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~392_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~220_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~156_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~92_q\ 
-- ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~28_q\,
	datab => \ALT_INV_ARRAYREG~92_q\,
	datac => \ALT_INV_ARRAYREG~156_q\,
	datad => \ALT_INV_ARRAYREG~220_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~392_combout\);

\ARRAYREG~393\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~393_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~236_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~172_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~108_q\ 
-- ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~44_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~44_q\,
	datab => \ALT_INV_ARRAYREG~108_q\,
	datac => \ALT_INV_ARRAYREG~172_q\,
	datad => \ALT_INV_ARRAYREG~236_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~393_combout\);

\ARRAYREG~394\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~394_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~252_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~188_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~124_q\ 
-- ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~60_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~60_q\,
	datab => \ALT_INV_ARRAYREG~124_q\,
	datac => \ALT_INV_ARRAYREG~188_q\,
	datad => \ALT_INV_ARRAYREG~252_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~394_combout\);

\ARRAYREG~395\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~395_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~268_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~204_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~140_q\ 
-- ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~76_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~76_q\,
	datab => \ALT_INV_ARRAYREG~140_q\,
	datac => \ALT_INV_ARRAYREG~204_q\,
	datad => \ALT_INV_ARRAYREG~268_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~395_combout\);

\ARRAYREG~396\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~396_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~395_combout\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~394_combout\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( 
-- \ARRAYREG~393_combout\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~392_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~392_combout\,
	datab => \ALT_INV_ARRAYREG~393_combout\,
	datac => \ALT_INV_ARRAYREG~394_combout\,
	datad => \ALT_INV_ARRAYREG~395_combout\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~396_combout\);

\ARRAYREG~397\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~397_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~77_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~61_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~45_q\ ) 
-- ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~29_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~29_q\,
	datab => \ALT_INV_ARRAYREG~45_q\,
	datac => \ALT_INV_ARRAYREG~61_q\,
	datad => \ALT_INV_ARRAYREG~77_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~397_combout\);

\ARRAYREG~398\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~398_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~141_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~125_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~109_q\ 
-- ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~93_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~93_q\,
	datab => \ALT_INV_ARRAYREG~109_q\,
	datac => \ALT_INV_ARRAYREG~125_q\,
	datad => \ALT_INV_ARRAYREG~141_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~398_combout\);

\ARRAYREG~399\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~399_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~205_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~189_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~173_q\ 
-- ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~157_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~157_q\,
	datab => \ALT_INV_ARRAYREG~173_q\,
	datac => \ALT_INV_ARRAYREG~189_q\,
	datad => \ALT_INV_ARRAYREG~205_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~399_combout\);

\ARRAYREG~400\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~400_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~269_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~253_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~237_q\ 
-- ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~221_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~221_q\,
	datab => \ALT_INV_ARRAYREG~237_q\,
	datac => \ALT_INV_ARRAYREG~253_q\,
	datad => \ALT_INV_ARRAYREG~269_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~400_combout\);

\ARRAYREG~401\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~401_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~400_combout\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~399_combout\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( 
-- \ARRAYREG~398_combout\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~397_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~397_combout\,
	datab => \ALT_INV_ARRAYREG~398_combout\,
	datac => \ALT_INV_ARRAYREG~399_combout\,
	datad => \ALT_INV_ARRAYREG~400_combout\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~401_combout\);

\ARRAYREG~402\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~402_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~222_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~158_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~94_q\ 
-- ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~30_q\,
	datab => \ALT_INV_ARRAYREG~94_q\,
	datac => \ALT_INV_ARRAYREG~158_q\,
	datad => \ALT_INV_ARRAYREG~222_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~402_combout\);

\ARRAYREG~403\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~403_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~238_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~174_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~110_q\ 
-- ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~46_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~46_q\,
	datab => \ALT_INV_ARRAYREG~110_q\,
	datac => \ALT_INV_ARRAYREG~174_q\,
	datad => \ALT_INV_ARRAYREG~238_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~403_combout\);

\ARRAYREG~404\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~404_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~254_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~190_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~126_q\ 
-- ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~62_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~62_q\,
	datab => \ALT_INV_ARRAYREG~126_q\,
	datac => \ALT_INV_ARRAYREG~190_q\,
	datad => \ALT_INV_ARRAYREG~254_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~404_combout\);

\ARRAYREG~405\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~405_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~270_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~206_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~142_q\ 
-- ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~78_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~78_q\,
	datab => \ALT_INV_ARRAYREG~142_q\,
	datac => \ALT_INV_ARRAYREG~206_q\,
	datad => \ALT_INV_ARRAYREG~270_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~405_combout\);

\ARRAYREG~406\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~406_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~405_combout\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~404_combout\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( 
-- \ARRAYREG~403_combout\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~402_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~402_combout\,
	datab => \ALT_INV_ARRAYREG~403_combout\,
	datac => \ALT_INV_ARRAYREG~404_combout\,
	datad => \ALT_INV_ARRAYREG~405_combout\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~406_combout\);

\ARRAYREG~407\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~407_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~79_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~63_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~47_q\ ) 
-- ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~31_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~31_q\,
	datab => \ALT_INV_ARRAYREG~47_q\,
	datac => \ALT_INV_ARRAYREG~63_q\,
	datad => \ALT_INV_ARRAYREG~79_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~407_combout\);

\ARRAYREG~408\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~408_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~143_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~127_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~111_q\ 
-- ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~95_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~95_q\,
	datab => \ALT_INV_ARRAYREG~111_q\,
	datac => \ALT_INV_ARRAYREG~127_q\,
	datad => \ALT_INV_ARRAYREG~143_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~408_combout\);

\ARRAYREG~409\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~409_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~207_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~191_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~175_q\ 
-- ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~159_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~159_q\,
	datab => \ALT_INV_ARRAYREG~175_q\,
	datac => \ALT_INV_ARRAYREG~191_q\,
	datad => \ALT_INV_ARRAYREG~207_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~409_combout\);

\ARRAYREG~410\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~410_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~271_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~255_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~239_q\ 
-- ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~223_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~223_q\,
	datab => \ALT_INV_ARRAYREG~239_q\,
	datac => \ALT_INV_ARRAYREG~255_q\,
	datad => \ALT_INV_ARRAYREG~271_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~410_combout\);

\ARRAYREG~411\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~411_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~410_combout\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~409_combout\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( 
-- \ARRAYREG~408_combout\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~407_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~407_combout\,
	datab => \ALT_INV_ARRAYREG~408_combout\,
	datac => \ALT_INV_ARRAYREG~409_combout\,
	datad => \ALT_INV_ARRAYREG~410_combout\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~411_combout\);

\ARRAYREG~412\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~412_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~224_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~160_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~96_q\ 
-- ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~32_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~32_q\,
	datab => \ALT_INV_ARRAYREG~96_q\,
	datac => \ALT_INV_ARRAYREG~160_q\,
	datad => \ALT_INV_ARRAYREG~224_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~412_combout\);

\ARRAYREG~413\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~413_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~240_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~176_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~112_q\ 
-- ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~48_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~48_q\,
	datab => \ALT_INV_ARRAYREG~112_q\,
	datac => \ALT_INV_ARRAYREG~176_q\,
	datad => \ALT_INV_ARRAYREG~240_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~413_combout\);

\ARRAYREG~414\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~414_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~256_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~192_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~128_q\ 
-- ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~64_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~64_q\,
	datab => \ALT_INV_ARRAYREG~128_q\,
	datac => \ALT_INV_ARRAYREG~192_q\,
	datad => \ALT_INV_ARRAYREG~256_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~414_combout\);

\ARRAYREG~415\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~415_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~272_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~208_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~144_q\ 
-- ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~80_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~80_q\,
	datab => \ALT_INV_ARRAYREG~144_q\,
	datac => \ALT_INV_ARRAYREG~208_q\,
	datad => \ALT_INV_ARRAYREG~272_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~415_combout\);

\ARRAYREG~416\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~416_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~415_combout\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~414_combout\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( 
-- \ARRAYREG~413_combout\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~412_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~412_combout\,
	datab => \ALT_INV_ARRAYREG~413_combout\,
	datac => \ALT_INV_ARRAYREG~414_combout\,
	datad => \ALT_INV_ARRAYREG~415_combout\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~416_combout\);

\ARRAYREG~417\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~417_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~81_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~65_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~49_q\ ) 
-- ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~33_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~33_q\,
	datab => \ALT_INV_ARRAYREG~49_q\,
	datac => \ALT_INV_ARRAYREG~65_q\,
	datad => \ALT_INV_ARRAYREG~81_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~417_combout\);

\ARRAYREG~418\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~418_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~145_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~129_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~113_q\ 
-- ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~97_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~97_q\,
	datab => \ALT_INV_ARRAYREG~113_q\,
	datac => \ALT_INV_ARRAYREG~129_q\,
	datad => \ALT_INV_ARRAYREG~145_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~418_combout\);

\ARRAYREG~419\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~419_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~209_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~193_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~177_q\ 
-- ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~161_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~161_q\,
	datab => \ALT_INV_ARRAYREG~177_q\,
	datac => \ALT_INV_ARRAYREG~193_q\,
	datad => \ALT_INV_ARRAYREG~209_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~419_combout\);

\ARRAYREG~420\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~420_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~273_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~257_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~241_q\ 
-- ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~225_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~225_q\,
	datab => \ALT_INV_ARRAYREG~241_q\,
	datac => \ALT_INV_ARRAYREG~257_q\,
	datad => \ALT_INV_ARRAYREG~273_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~420_combout\);

\ARRAYREG~421\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~421_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~420_combout\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~419_combout\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( 
-- \ARRAYREG~418_combout\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~417_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~417_combout\,
	datab => \ALT_INV_ARRAYREG~418_combout\,
	datac => \ALT_INV_ARRAYREG~419_combout\,
	datad => \ALT_INV_ARRAYREG~420_combout\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~421_combout\);

\ARRAYREG~422\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~422_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~226_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~162_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~98_q\ 
-- ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~34_q\,
	datab => \ALT_INV_ARRAYREG~98_q\,
	datac => \ALT_INV_ARRAYREG~162_q\,
	datad => \ALT_INV_ARRAYREG~226_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~422_combout\);

\ARRAYREG~423\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~423_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~242_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~178_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~114_q\ 
-- ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~50_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~50_q\,
	datab => \ALT_INV_ARRAYREG~114_q\,
	datac => \ALT_INV_ARRAYREG~178_q\,
	datad => \ALT_INV_ARRAYREG~242_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~423_combout\);

\ARRAYREG~424\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~424_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~258_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~194_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~130_q\ 
-- ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~66_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~66_q\,
	datab => \ALT_INV_ARRAYREG~130_q\,
	datac => \ALT_INV_ARRAYREG~194_q\,
	datad => \ALT_INV_ARRAYREG~258_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~424_combout\);

\ARRAYREG~425\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~425_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~274_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~210_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~146_q\ 
-- ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~82_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~82_q\,
	datab => \ALT_INV_ARRAYREG~146_q\,
	datac => \ALT_INV_ARRAYREG~210_q\,
	datad => \ALT_INV_ARRAYREG~274_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~425_combout\);

\ARRAYREG~426\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~426_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~425_combout\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~424_combout\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( 
-- \ARRAYREG~423_combout\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~422_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~422_combout\,
	datab => \ALT_INV_ARRAYREG~423_combout\,
	datac => \ALT_INV_ARRAYREG~424_combout\,
	datad => \ALT_INV_ARRAYREG~425_combout\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~426_combout\);

\ARRAYREG~427\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~427_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~83_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~67_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~51_q\ ) 
-- ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~35_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~35_q\,
	datab => \ALT_INV_ARRAYREG~51_q\,
	datac => \ALT_INV_ARRAYREG~67_q\,
	datad => \ALT_INV_ARRAYREG~83_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~427_combout\);

\ARRAYREG~428\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~428_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~147_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~131_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~115_q\ 
-- ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~99_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~99_q\,
	datab => \ALT_INV_ARRAYREG~115_q\,
	datac => \ALT_INV_ARRAYREG~131_q\,
	datad => \ALT_INV_ARRAYREG~147_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~428_combout\);

\ARRAYREG~429\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~429_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~211_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~195_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~179_q\ 
-- ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~163_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~163_q\,
	datab => \ALT_INV_ARRAYREG~179_q\,
	datac => \ALT_INV_ARRAYREG~195_q\,
	datad => \ALT_INV_ARRAYREG~211_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~429_combout\);

\ARRAYREG~430\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~430_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~275_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~259_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~243_q\ 
-- ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~227_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~227_q\,
	datab => \ALT_INV_ARRAYREG~243_q\,
	datac => \ALT_INV_ARRAYREG~259_q\,
	datad => \ALT_INV_ARRAYREG~275_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~430_combout\);

\ARRAYREG~431\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~431_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~430_combout\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~429_combout\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( 
-- \ARRAYREG~428_combout\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~427_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~427_combout\,
	datab => \ALT_INV_ARRAYREG~428_combout\,
	datac => \ALT_INV_ARRAYREG~429_combout\,
	datad => \ALT_INV_ARRAYREG~430_combout\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~431_combout\);

\ARRAYREG~432\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~432_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~228_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~164_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~100_q\ 
-- ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~36_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~36_q\,
	datab => \ALT_INV_ARRAYREG~100_q\,
	datac => \ALT_INV_ARRAYREG~164_q\,
	datad => \ALT_INV_ARRAYREG~228_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~432_combout\);

\ARRAYREG~433\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~433_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~244_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~180_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~116_q\ 
-- ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~52_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~52_q\,
	datab => \ALT_INV_ARRAYREG~116_q\,
	datac => \ALT_INV_ARRAYREG~180_q\,
	datad => \ALT_INV_ARRAYREG~244_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~433_combout\);

\ARRAYREG~434\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~434_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~260_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~196_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~132_q\ 
-- ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~68_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~68_q\,
	datab => \ALT_INV_ARRAYREG~132_q\,
	datac => \ALT_INV_ARRAYREG~196_q\,
	datad => \ALT_INV_ARRAYREG~260_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~434_combout\);

\ARRAYREG~435\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~435_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~276_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \ARRAYREG~212_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~148_q\ 
-- ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \ARRAYREG~84_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~84_q\,
	datab => \ALT_INV_ARRAYREG~148_q\,
	datac => \ALT_INV_ARRAYREG~212_q\,
	datad => \ALT_INV_ARRAYREG~276_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \ARRAYREG~435_combout\);

\ARRAYREG~436\ : cyclonev_lcell_comb
-- Equation(s):
-- \ARRAYREG~436_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~435_combout\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \ARRAYREG~434_combout\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( 
-- \ARRAYREG~433_combout\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \ARRAYREG~432_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ARRAYREG~432_combout\,
	datab => \ALT_INV_ARRAYREG~433_combout\,
	datac => \ALT_INV_ARRAYREG~434_combout\,
	datad => \ALT_INV_ARRAYREG~435_combout\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \ARRAYREG~436_combout\);

ww_ReadData1(0) <= \ReadData1[0]~output_o\;

ww_ReadData1(1) <= \ReadData1[1]~output_o\;

ww_ReadData1(2) <= \ReadData1[2]~output_o\;

ww_ReadData1(3) <= \ReadData1[3]~output_o\;

ww_ReadData1(4) <= \ReadData1[4]~output_o\;

ww_ReadData1(5) <= \ReadData1[5]~output_o\;

ww_ReadData1(6) <= \ReadData1[6]~output_o\;

ww_ReadData1(7) <= \ReadData1[7]~output_o\;

ww_ReadData1(8) <= \ReadData1[8]~output_o\;

ww_ReadData1(9) <= \ReadData1[9]~output_o\;

ww_ReadData1(10) <= \ReadData1[10]~output_o\;

ww_ReadData1(11) <= \ReadData1[11]~output_o\;

ww_ReadData1(12) <= \ReadData1[12]~output_o\;

ww_ReadData1(13) <= \ReadData1[13]~output_o\;

ww_ReadData1(14) <= \ReadData1[14]~output_o\;

ww_ReadData1(15) <= \ReadData1[15]~output_o\;

ww_ReadData2(0) <= \ReadData2[0]~output_o\;

ww_ReadData2(1) <= \ReadData2[1]~output_o\;

ww_ReadData2(2) <= \ReadData2[2]~output_o\;

ww_ReadData2(3) <= \ReadData2[3]~output_o\;

ww_ReadData2(4) <= \ReadData2[4]~output_o\;

ww_ReadData2(5) <= \ReadData2[5]~output_o\;

ww_ReadData2(6) <= \ReadData2[6]~output_o\;

ww_ReadData2(7) <= \ReadData2[7]~output_o\;

ww_ReadData2(8) <= \ReadData2[8]~output_o\;

ww_ReadData2(9) <= \ReadData2[9]~output_o\;

ww_ReadData2(10) <= \ReadData2[10]~output_o\;

ww_ReadData2(11) <= \ReadData2[11]~output_o\;

ww_ReadData2(12) <= \ReadData2[12]~output_o\;

ww_ReadData2(13) <= \ReadData2[13]~output_o\;

ww_ReadData2(14) <= \ReadData2[14]~output_o\;

ww_ReadData2(15) <= \ReadData2[15]~output_o\;
END structure;


