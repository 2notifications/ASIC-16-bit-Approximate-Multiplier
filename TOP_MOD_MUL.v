`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2025 20:01:49
// Design Name: 
// Module Name: TOP_MOD_MUL
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


module TOP_MOD_MUL(a,b,m);
input [15:0]a,b;
output [31:0]m;

wire [227:0]pp; 
wire [115:10]p,g;
wire [36:7]G;
wire [63:3]S,C;
wire [30:0]Cout;
wire [31:8]x,y;
wire [15:8]z;
wire c;

//partial products
//assign pp[0] = a[0] & b[0];
//assign pp[1] = a[1] & b[0];
//assign pp[2] = a[2] & b[0];
//assign pp[3] = a[3] & b[0];
//assign pp[4] = a[4] & b[0];
//assign pp[5] = a[5] & b[0];
//assign pp[6] = a[6] & b[0];
assign pp[0] = a[7] & b[0];
assign pp[1] = a[8] & b[0];
assign pp[2] = a[9] & b[0];
assign pp[3] = a[10] & b[0];
assign pp[4] = a[11] & b[0];
assign pp[5] = a[12] & b[0];
assign pp[6] = a[13] & b[0];
assign pp[7] = a[14] & b[0];
assign pp[8] = a[15] & b[0];

//assign pp[16] = a[0] & b[1];
//assign pp[17] = a[1] & b[1];
//assign pp[18] = a[2] & b[1];
//assign pp[19] = a[3] & b[1];
//assign pp[20] = a[4] & b[1];
//assign pp[21] = a[5] & b[1];
assign pp[9] = a[6] & b[1];
assign pp[10] = a[7] & b[1];
assign pp[11] = a[8] & b[1];
assign pp[12] = a[9] & b[1];
assign pp[13] = a[10] & b[1];
assign pp[14] = a[11] & b[1];
assign pp[15] = a[12] & b[1];
assign pp[16] = a[13] & b[1];
assign pp[17] = a[14] & b[1];
assign pp[18] = a[15] & b[1];

//assign pp[32] = a[0] & b[2];
//assign pp[33] = a[1] & b[2];
//assign pp[34] = a[2] & b[2];
//assign pp[35] = a[3] & b[2];
//assign pp[36] = a[4] & b[2];
assign pp[19] = a[5] & b[2];
assign pp[20] = a[6] & b[2];
assign pp[21] = a[7] & b[2];
assign pp[22] = a[8] & b[2];
assign pp[23] = a[9] & b[2];
assign pp[24] = a[10] & b[2];
assign pp[25] = a[11] & b[2];
assign pp[26] = a[12] & b[2];
assign pp[27] = a[13] & b[2];
assign pp[28] = a[14] & b[2];
assign pp[29] = a[15] & b[2];

//assign pp[48] = a[0] & b[3];
//assign pp[49] = a[1] & b[3];
//assign pp[50] = a[2] & b[3];
//assign pp[51] = a[3] & b[3];
assign pp[30] = a[4] & b[3];
assign pp[31] = a[5] & b[3];
assign pp[32] = a[6] & b[3];
assign pp[33] = a[7] & b[3];
assign pp[34] = a[8] & b[3];
assign pp[35] = a[9] & b[3];
assign pp[36] = a[10] & b[3];
assign pp[37] = a[11] & b[3];
assign pp[38] = a[12] & b[3];
assign pp[39] = a[13] & b[3];
assign pp[40] = a[14] & b[3];
assign pp[41] = a[15] & b[3];

//assign pp[64] = a[0] & b[4];
//assign pp[65] = a[1] & b[4];
//assign pp[66] = a[2] & b[4];
assign pp[42] = a[3] & b[4];
assign pp[43] = a[4] & b[4];
assign pp[44] = a[5] & b[4];
assign pp[45] = a[6] & b[4];
assign pp[46] = a[7] & b[4];
assign pp[47] = a[8] & b[4];
assign pp[48] = a[9] & b[4];
assign pp[49] = a[10] & b[4];
assign pp[50] = a[11] & b[4];
assign pp[51] = a[12] & b[4];
assign pp[52] = a[13] & b[4];
assign pp[53] = a[14] & b[4];
assign pp[54] = a[15] & b[4];

//assign pp[80] = a[0] & b[5];
//assign pp[81] = a[1] & b[5];
assign pp[55] = a[2] & b[5];
assign pp[56] = a[3] & b[5];
assign pp[57] = a[4] & b[5];
assign pp[58] = a[5] & b[5];
assign pp[59] = a[6] & b[5];
assign pp[60] = a[7] & b[5];
assign pp[61] = a[8] & b[5];
assign pp[62] = a[9] & b[5];
assign pp[63] = a[10] & b[5];
assign pp[64] = a[11] & b[5];
assign pp[65] = a[12] & b[5];
assign pp[66] = a[13] & b[5];
assign pp[67] = a[14] & b[5];
assign pp[68] = a[15] & b[5];

//assign pp[96] = a[0] & b[6];
assign pp[69] = a[1] & b[6];
assign pp[70] = a[2] & b[6];
assign pp[71] = a[3] & b[6];
assign pp[72] = a[4] & b[6];
assign pp[73] = a[5] & b[6];
assign pp[74] = a[6] & b[6];
assign pp[75] = a[7] & b[6];
assign pp[76] = a[8] & b[6];
assign pp[77] = a[9] & b[6];
assign pp[78] = a[10] & b[6];
assign pp[79] = a[11] & b[6];
assign pp[80] = a[12] & b[6];
assign pp[81] = a[13] & b[6];
assign pp[82] = a[14] & b[6];
assign pp[83] = a[15] & b[6];

assign pp[84] = a[0] & b[7];
assign pp[85] = a[1] & b[7];
assign pp[86] = a[2] & b[7];
assign pp[87] = a[3] & b[7];
assign pp[88] = a[4] & b[7];
assign pp[89] = a[5] & b[7];
assign pp[90] = a[6] & b[7];
assign pp[91] = a[7] & b[7];
assign pp[92] = a[8] & b[7];
assign pp[93] = a[9] & b[7];
assign pp[94] = a[10] & b[7];
assign pp[95] = a[11] & b[7];
assign pp[96] = a[12] & b[7];
assign pp[97] = a[13] & b[7];
assign pp[98] = a[14] & b[7];
assign pp[99] = a[15] & b[7];

assign pp[100] = a[0] & b[8];
assign pp[101] = a[1] & b[8];
assign pp[102] = a[2] & b[8];
assign pp[103] = a[3] & b[8];
assign pp[104] = a[4] & b[8];
assign pp[105] = a[5] & b[8];
assign pp[106] = a[6] & b[8];
assign pp[107] = a[7] & b[8];
assign pp[108] = a[8] & b[8];
assign pp[109] = a[9] & b[8];
assign pp[110] = a[10] & b[8];
assign pp[111] = a[11] & b[8];
assign pp[112] = a[12] & b[8];
assign pp[113] = a[13] & b[8];
assign pp[114] = a[14] & b[8];
assign pp[115] = a[15] & b[8];
             
assign pp[116] = a[0] & b[9];
assign pp[117] = a[1] & b[9];
assign pp[118] = a[2] & b[9];
assign pp[119] = a[3] & b[9];
assign pp[120] = a[4] & b[9];
assign pp[121] = a[5] & b[9];
assign pp[122] = a[6] & b[9];
assign pp[123] = a[7] & b[9];
assign pp[124] = a[8] & b[9];
assign pp[125] = a[9] & b[9];
assign pp[126] = a[10] & b[9];
assign pp[127] = a[11] & b[9];
assign pp[128] = a[12] & b[9];
assign pp[129] = a[13] & b[9];
assign pp[130] = a[14] & b[9];
assign pp[131] = a[15] & b[9];
         
assign pp[132] = a[0] & b[10];
assign pp[133] = a[1] & b[10];
assign pp[134] = a[2] & b[10];
assign pp[135] = a[3] & b[10];
assign pp[136] = a[4] & b[10];
assign pp[137] = a[5] & b[10];
assign pp[138] = a[6] & b[10];
assign pp[139] = a[7] & b[10];
assign pp[140] = a[8] & b[10];
assign pp[141] = a[9] & b[10];
assign pp[142] = a[10] & b[10];
assign pp[143] = a[11] & b[10];
assign pp[144] = a[12] & b[10];
assign pp[145] = a[13] & b[10];
assign pp[146] = a[14] & b[10];
assign pp[147] = a[15] & b[10];
             
assign pp[148] = a[0] & b[11];
assign pp[149] = a[1] & b[11];
assign pp[150] = a[2] & b[11];
assign pp[151] = a[3] & b[11];
assign pp[152] = a[4] & b[11];
assign pp[153] = a[5] & b[11];
assign pp[154] = a[6] & b[11];
assign pp[155] = a[7] & b[11];
assign pp[156] = a[8] & b[11];
assign pp[157] = a[9] & b[11];
assign pp[158] = a[10] & b[11];
assign pp[159] = a[11] & b[11];
assign pp[160] = a[12] & b[11];
assign pp[161] = a[13] & b[11];
assign pp[162] = a[14] & b[11];
assign pp[163] = a[15] & b[11];
         
assign pp[164] = a[0] & b[12];
assign pp[165] = a[1] & b[12];
assign pp[166] = a[2] & b[12];
assign pp[167] = a[3] & b[12];
assign pp[168] = a[4] & b[12];
assign pp[169] = a[5] & b[12];
assign pp[170] = a[6] & b[12];
assign pp[171] = a[7] & b[12];
assign pp[172] = a[8] & b[12];
assign pp[173] = a[9] & b[12];
assign pp[174] = a[10] & b[12];
assign pp[175] = a[11] & b[12];
assign pp[176] = a[12] & b[12];
assign pp[177] = a[13] & b[12];
assign pp[178] = a[14] & b[12];
assign pp[179] = a[15] & b[12];
         
assign pp[180] = a[0] & b[13];
assign pp[181] = a[1] & b[13];
assign pp[182] = a[2] & b[13];
assign pp[183] = a[3] & b[13];
assign pp[184] = a[4] & b[13];
assign pp[185] = a[5] & b[13];
assign pp[186] = a[6] & b[13];
assign pp[187] = a[7] & b[13];
assign pp[188] = a[8] & b[13];
assign pp[189] = a[9] & b[13];
assign pp[190] = a[10] & b[13];
assign pp[191] = a[11] & b[13];
assign pp[192] = a[12] & b[13];
assign pp[193] = a[13] & b[13];
assign pp[194] = a[14] & b[13];
assign pp[195] = a[15] & b[13];
         
assign pp[196] = a[0] & b[14];
assign pp[197] = a[1] & b[14];
assign pp[198] = a[2] & b[14];
assign pp[199] = a[3] & b[14];
assign pp[200] = a[4] & b[14];
assign pp[201] = a[5] & b[14];
assign pp[202] = a[6] & b[14];
assign pp[203] = a[7] & b[14];
assign pp[204] = a[8] & b[14];
assign pp[205] = a[9] & b[14];
assign pp[206] = a[10] & b[14];
assign pp[207] = a[11] & b[14];
assign pp[208] = a[12] & b[14];
assign pp[209] = a[13] & b[14];
assign pp[210] = a[14] & b[14];
assign pp[211] = a[15] & b[14];
     
assign pp[212] = a[0] & b[15];
assign pp[213] = a[1] & b[15];
assign pp[214] = a[2] & b[15];
assign pp[215] = a[3] & b[15];
assign pp[216] = a[4] & b[15];
assign pp[217] = a[5] & b[15];
assign pp[218] = a[6] & b[15];
assign pp[219] = a[7] & b[15];
assign pp[220] = a[8] & b[15];
assign pp[221] = a[9] & b[15];
assign pp[222] = a[10] & b[15];
assign pp[223] = a[11] & b[15];
assign pp[224] = a[12] & b[15];
assign pp[225] = a[13] & b[15];
assign pp[226] = a[14] & b[15];
assign pp[227] = a[15] & b[15];

//Generate and Propagate signals
    //Propagate signal

    //column3
//    assign p[0]=pp[3]|pp[48];
//    assign p[1]=pp[18]|pp[33]; 

//    //column4 
//    assign p[2]=pp[4]|pp[64];  
//    assign p[3]=pp[19]|pp[49]; 

//    //column5
//    assign p[4]=pp[5]|pp[80];
//    assign p[5]=pp[20]|pp[65];
//    assign p[6]=pp[35]|pp[50];
    
//    //column6
//    assign p[7]=pp[6]|pp[96];
//    assign p[8]=pp[21]|pp[81];
//    assign p[9]=pp[36]|pp[66];
    
    //column7
    assign p[10]=pp[0]|pp[84];
    assign p[11]=pp[9]|pp[69];
    assign p[12]=pp[19]|pp[55];
    assign p[13]=pp[30]|pp[42]; 
    
    //column8
    assign p[14]=pp[1]|pp[100];
    assign p[15]=pp[10]|pp[85]; 
    assign p[16]=pp[20]|pp[70]; 
    assign p[17]=pp[31]|pp[56]; 
    
    //column9
    assign p[18]=pp[2]|pp[146]; 
    assign p[19]=pp[11]|pp[101]; 
    assign p[20]=pp[21]|pp[86]; 
    assign p[21]=pp[32]|pp[71]; 
    assign p[22]=pp[44]|pp[57]; 
    
    //column10
    assign p[23]=pp[3]|pp[132]; 
    assign p[24]=pp[12]|pp[117]; 
    assign p[25]=pp[22]|pp[102]; 
    assign p[26]=pp[33]|pp[87]; 
    assign p[27]=pp[45]|pp[72];
    
    //column11 
    assign p[28]=pp[4]|pp[148]; 
    assign p[29]=pp[13]|pp[133]; 
    assign p[30]=pp[23]|pp[118];
    assign p[31]=pp[34]|pp[103];    
    assign p[32]=pp[46]|pp[88];                               
    assign p[33]=pp[59]|pp[73];  
    
    //column12                              
    assign p[34]=pp[5]|pp[164]; 
    assign p[35]=pp[14]|pp[149]; 
    assign p[36]=pp[24]|pp[134]; 
    assign p[37]=pp[35]|pp[119];
    assign p[38]=pp[47]|pp[104];  
    assign p[39]=pp[60]|pp[89];
    
    //column13
    assign p[40]=pp[6]|pp[180];  
    assign p[41]=pp[15]|pp[165];                                 
    assign p[42]=pp[25]|pp[150];
    assign p[43]=pp[36]|pp[135];  
    assign p[44]=pp[48]|pp[120];  
    assign p[45]=pp[61]|pp[105];  
    assign p[46]=pp[75]|pp[90]; 
    
    //column14 
    assign p[47]=pp[7]|pp[196];
    assign p[48]=pp[16]|pp[181];
    assign p[49]=pp[26]|pp[166];
    assign p[50]=pp[37]|pp[151];  
    assign p[51]=pp[49]|pp[136];  
    assign p[52]=pp[62]|pp[121]; 
    assign p[53]=pp[76]|pp[106]; 
    
    //column15  
    assign p[54]=pp[8]|pp[212];
    assign p[55]=pp[17]|pp[197];
    assign p[56]=pp[27]|pp[182];  
    assign p[57]=pp[38]|pp[167];  
    assign p[58]=pp[50]|pp[152];  
    assign p[59]=pp[63]|pp[137];  
    assign p[60]=pp[77]|pp[122];
    assign p[61]=pp[92]|pp[107];
    
    //column16
    assign p[62]=pp[18]|pp[213];
    assign p[63]=pp[28]|pp[198];  
    assign p[64]=pp[39]|pp[183];  
    assign p[65]=pp[51]|pp[168]; 
    assign p[66]=pp[64]|pp[153];   
    assign p[67]=pp[78]|pp[138];
    assign p[68]=pp[93]|pp[123];
    
    //column17
    assign p[69]=pp[29]|pp[214];  
    assign p[70]=pp[40]|pp[199];  
    assign p[71]=pp[52]|pp[184];  
    assign p[72]=pp[65]|pp[169];  
    assign p[73]=pp[79]|pp[154];
    assign p[74]=pp[94]|pp[139];
    assign p[75]=pp[109]|pp[124];
    
    //column18
    assign p[76]=pp[41]|pp[215];  
    assign p[77]=pp[53]|pp[200];  
    assign p[78]=pp[66]|pp[185];   
    assign p[79]=pp[80]|pp[170];  
    assign p[80]=pp[95]|pp[155]; 
    assign p[81]=pp[110]|pp[140]; 
    
    //column19
    assign p[82]=pp[54]|pp[216];  
    assign p[83]=pp[67]|pp[201];  
    assign p[84]=pp[81]|pp[186];
    assign p[85]=pp[96]|pp[171];  
    assign p[86]=pp[111]|pp[156];  
    assign p[87]=pp[126]|pp[141];
    
    //column20
    assign p[88]=pp[68]|pp[217];  
    assign p[89]=pp[82]|pp[202];  
    assign p[90]=pp[97]|pp[187];
    assign p[91]=pp[112]|pp[172];  
    assign p[92]=pp[127]|pp[157]; 
    
    //column21 
    assign p[93]=pp[83]|pp[218];
    assign p[94]=pp[98]|pp[203];  
    assign p[95]=pp[113]|pp[188];  
    assign p[96]=pp[128]|pp[173];
    assign p[97]=pp[143]|pp[158];  
    
    //column22
    assign p[98]=pp[99]|pp[219]; 
    assign p[99]=pp[114]|pp[204];  
    assign p[100]=pp[129]|pp[189];
    assign p[101]=pp[144]|pp[174]; 
    
    //column23
    assign p[102]=pp[115]|pp[220]; 
    assign p[103]=pp[130]|pp[205]; 
    assign p[104]=pp[145]|pp[190]; 
    assign p[105]=pp[160]|pp[175];
    
    //column24
    assign p[106]=pp[131]|pp[221]; 
    assign p[107]=pp[146]|pp[206]; 
    assign p[108]=pp[161]|pp[191];
    
    //column25
    assign p[109]=pp[147]|pp[222]; 
    assign p[110]=pp[162]|pp[207];
    assign p[111]=pp[177]|pp[192];
    
    //column26
    assign p[112]=pp[163]|pp[223];
    assign p[113]=pp[178]|pp[208]; 
    
    //column27
    assign p[114]=pp[179]|pp[224];
    assign p[115]=pp[194]|pp[209]; 
    
    //Generate signal
    
//     //column3
//    assign g[0]=pp[3]&pp[48]; 
//    assign g[1]=pp[18]&pp[33];
           
//    //column4 
//    assign g[2]=pp[4]&pp[64];       
//    assign g[3]=pp[19]&pp[49];     
           
//    //column5
//    assign g[4]=pp[5]&pp[80];     
//    assign g[5]=pp[20]&pp[65];    
//    assign g[6]=pp[35]&pp[50];    
           
//    //column6
//    assign g[7]=pp[6]&pp[96];     
//    assign g[8]=pp[21]&pp[81];    
//    assign g[9]=pp[36]&pp[66];    
           
        //column7
    assign g[10]=pp[0] & pp[84];
    assign g[11]=pp[9] & pp[69];
    assign g[12]=pp[19]& pp[55];
    assign g[13]=pp[30]& pp[42]; 
    
    //column8
    assign g[14]=pp[1] & pp[100];
    assign g[15]=pp[10]& pp[85]; 
    assign g[16]=pp[20]& pp[70]; 
    assign g[17]=pp[31]& pp[56]; 
    
    //column9
    assign g[18]=pp[2]  & pp[146]; 
    assign g[19]=pp[11] & pp[101]; 
    assign g[20]=pp[21]& pp[86]; 
    assign g[21]=pp[32]& pp[71]; 
    assign g[22]=pp[44]& pp[57]; 
    
    //column10
    assign g[23]=pp[3] & pp[132]; 
    assign g[24]=pp[12]& pp[117]; 
    assign g[25]=pp[22]& pp[102]; 
    assign g[26]=pp[33]& pp[87]; 
    assign g[27]=pp[45]& pp[72];
    
    //column11 
    assign g[28]=pp[4] & pp[148]; 
    assign g[29]=pp[13]& pp[133]; 
    assign g[30]=pp[23]& pp[118];
    assign g[31]=pp[34]& pp[103];    
    assign g[32]=pp[46]& pp[88];                               
    assign g[33]=pp[59]& pp[73];  
    
    //column12                              
    assign g[34]=pp[5] & pp[164]; 
    assign g[35]=pp[14]& pp[149]; 
    assign g[36]=pp[24]& pp[134]; 
    assign g[37]=pp[35]& pp[119];
    assign g[38]=pp[47]& pp[104];  
    assign g[39]=pp[60]& pp[89];
    
    //column13
    assign g[40]=pp[6]  & pp[180];  
    assign g[41]=pp[15] & pp[165];                                 
    assign g[42]=pp[25] & pp[150];
    assign g[43]=pp[36] & pp[135];  
    assign g[44]=pp[48] & pp[120];  
    assign g[45]=pp[61] & pp[105];  
    assign g[46]=pp[75] & pp[90]; 
    
    //column14 
    assign g[47]=pp[7]  & pp[196];
    assign g[48]=pp[16] & pp[181];
    assign g[49]=pp[26] & pp[166];
    assign g[50]=pp[37] & pp[151];  
    assign g[51]=pp[49] & pp[136];  
    assign g[52]=pp[62] & pp[121]; 
    assign g[53]=pp[76] & pp[106]; 
    
    //column15  
    assign g[54]=pp[8] & pp[212];
    assign g[55]=pp[17]& pp[197];
    assign g[56]=pp[27]& pp[182];  
    assign g[57]=pp[38]& pp[167];  
    assign g[58]=pp[50]& pp[152];  
    assign g[59]=pp[63]& pp[137];  
    assign g[60]=pp[77]& pp[122];
    assign g[61]=pp[92]& pp[107];
    
    //column16
    assign g[62]=pp[18] & pp[213];
    assign g[63]=pp[28] & pp[198];  
    assign g[64]=pp[39] & pp[183];  
    assign g[65]=pp[51] & pp[168]; 
    assign g[66]=pp[64] & pp[153];   
    assign g[67]=pp[78] & pp[138];
    assign g[68]=pp[93] & pp[123];
    
    //column17
    assign g[69]=pp[29]  & pp[214];  
    assign g[70]=pp[40]  & pp[199];  
    assign g[71]=pp[52]  & pp[184];  
    assign g[72]=pp[65]  & pp[169];  
    assign g[73]=pp[79]  & pp[154];
    assign g[74]=pp[94]  & pp[139];
    assign g[75]=pp[109]& pp[124];
    
    //column18
    assign g[76]=pp[41]  & pp[215];  
    assign g[77]=pp[53]  & pp[200];  
    assign g[78]=pp[66]  & pp[185];   
    assign g[79]=pp[80]  & pp[170];  
    assign g[80]=pp[95]  & pp[155]; 
    assign g[81]=pp[110]& pp[140]; 
    
    //column19
    assign g[82]=pp[54]  & pp[216];  
    assign g[83]=pp[67]  & pp[201];  
    assign g[84]=pp[81]  & pp[186];
    assign g[85]=pp[96]  & pp[171];  
    assign g[86]=pp[111]& pp[156];  
    assign g[87]=pp[126]& pp[141];
    
    //column20
    assign g[88]=pp[68]  & pp[217];  
    assign g[89]=pp[82]  & pp[202];  
    assign g[90]=pp[97]  & pp[187];
    assign g[91]=pp[112]& pp[172];  
    assign g[92]=pp[127]& pp[157]; 
    
    //column21 
    assign g[93]=pp[83]  & pp[218];
    assign g[94]=pp[98]  & pp[203];  
    assign g[95]=pp[113]& pp[188];  
    assign g[96]=pp[128]& pp[173];
    assign g[97]=pp[143]& pp[158];  
    
    //column22
    assign g[98]=pp[99]  & pp[219]; 
    assign g[99]=pp[114]& pp[204];  
    assign g[100]=pp[129]& pp[189];
    assign g[101]=pp[144]& pp[174]; 
    
    //column23
    assign g[102]=pp[115]& pp[220]; 
    assign g[103]=pp[130]& pp[205]; 
    assign g[104]=pp[145]& pp[190]; 
    assign g[105]=pp[160]& pp[175];
    
    //column24
    assign g[106]=pp[131]& pp[221]; 
    assign g[107]=pp[146]& pp[206]; 
    assign g[108]=pp[161]& pp[191];
    
    //column25
    assign g[109]=pp[147] & pp[222]; 
    assign g[110]=pp[162]& pp[207];
    assign g[111]=pp[177]& pp[192];
    
    //column26
    assign g[112]=pp[163]& pp[223];
    assign g[113]=pp[178]& pp[208]; 
    
    //column27
    assign g[114]=pp[179]& pp[224];
    assign g[115]=pp[194]& pp[209]; 
    
    //stage 1
    //Compress Generate signal
//    assign G[3]=g[0]|g[1];
//    assign G[4]=g[2]|g[3];
    
//    assign G[5]=g[4]|g[5]|g[6];
//    assign G[6]=g[7]|g[8]|g[9];
    
    assign G[7]=g[10]|g[11]|g[12]|g[13];
    assign G[8]=g[14]|g[15]|g[16]|g[17];
    
    assign G[9]=g[18]|g[19]|g[20]|g[21];
    assign G[10]=g[23]|g[24]|g[25]|g[26];
    
    assign G[11]=g[28]|g[29]|g[30]|g[31];
    assign G[12]=g[32]|g[33];
    
    assign G[13]=g[34]|g[35]|g[36]|g[37];
    assign G[14]= g[38]|g[39];
    
    
    assign G[15]=g[40]|g[41]|g[42]|g[43];
    assign G[16]= g[44]|g[45]|g[46];
    
    assign G[17]=g[47]|g[48]|g[49]|g[50];
    assign G[18]=g[51]|g[52]|g[53]; 
    
    assign G[19]=g[54]|g[55]|g[56]|g[57];
    assign G[20]=g[58]|g[59]|g[60]|g[61];
    
    assign G[21]=g[62]|g[63]|g[64]|g[65];
    assign G[22]=g[66]|g[67]|g[68];
    
    assign G[23]=g[69]|g[70]|g[71]|g[72];
    assign G[24]=g[73]|g[74]|g[75];
    
    assign G[25]=g[76]|g[77]|g[78]|g[79];
    assign G[26]=g[80]|g[81];
    
    assign G[27]=g[82]|g[83]|g[84]|g[85];
    assign G[28]=g[86]|g[87];
    
    assign G[29]=g[88]|g[89]|g[90]|g[91];
    assign G[30]=g[93]|g[94]|g[95]|g[96];
    
    assign G[31]=g[98]|g[99]|g[100]|g[101]; 
    assign G[32]=g[102]|g[103]|g[104]|g[105];
    
    assign G[33]=g[106]|g[107]|g[108];  
    assign G[34]=g[109]|g[110]|g[111];
    
    assign G[35]=g[112]|g[113];
    assign G[36]=g[114]|g[115]; 
    
    //STAGE 1
    
   //column7
    compressor4_2 com1(p[10],p[11],p[12],p[13],S[3],C[3]);
    
    //column8
    Compressor5_2_proposed com2(p[14],p[15],p[16],p[17],pp[43],S[4],C[4]);
    
    //column9
    Compressor5_2_proposed com3(p[18],p[19],p[20],p[21],p[22],S[5],C[5]);
    
    //column10
    Compressor_6_2_proposed com4(p[23],p[24],p[25],p[26],p[27],pp[58],S[6],C[6],Cout[0]);
    
    //column11
    Compressor_6_2_proposed com5(p[28],p[29],p[30],p[31],p[32],p[33],S[7],C[7],Cout[1]);
    
    //column 12
    compressor7_2 com6(p[34],p[35],p[36],p[37],p[38],p[39],pp[74],Cout[2],Cout[3],S[8],C[8]);
    
    //column 13
    compressor7_2 com7(p[40],p[41],p[42],p[43],p[44],p[45],p[46],Cout[4],Cout[5],S[9],C[9]);
    
    //column 14
    compressors_8_2 com8(p[47],p[48],p[49],p[50],p[51],p[52],p[53],pp[91],Cout[6],Cout[7],Cout[8],S[10],C[10]);

    //column 15
    compressors_8_2 com9(p[54],p[55],p[56],p[57],p[58],p[59],p[60],p[61],Cout[9],Cout[10],Cout[11],S[11],C[11]);

    //column 16
    compressors_8_2 com10(p[62],p[63],p[64],p[65],p[66],p[67],p[68],pp[108],Cout[12],Cout[13],Cout[14],S[12],C[12]);

    //column 17
    compressor7_2 com11(p[69],p[70],p[71],p[72],p[73],p[74],p[75],Cout[15],Cout[16],S[13],C[13]);
    
    //column 18
    compressor7_2 com12(p[76],p[77],p[78],p[79],p[80],p[81],pp[125],Cout[17],Cout[18],S[14],C[14]);
    
    //column 19
    Compressor_6_2_proposed com13(p[82],p[83],p[84],p[85],p[86],p[87],S[15],C[15],Cout[19]);
    
    //column 20
    Compressor_6_2_proposed com14(p[88],p[89],p[90],p[91],p[92],pp[142],S[16],C[16],Cout[20]);
    
    //column 21
    Compressor5_2_proposed com15(p[93],p[94],p[95],p[96],p[97],S[17],C[17]);
    
    //column 22
    Compressor5_2_proposed com16(p[98],p[99],p[100],p[101],pp[159],S[18],C[18]);
 
    //column 23
    compressor4_2 com17(p[102],p[103],p[104],p[105],S[19],C[19]);
    
    //column 24
    compressor4_2 com18(p[106],p[107],p[108],pp[176],S[20],C[20]);
    
    //column 25
    FA fa0(p[109],p[110],p[111],S[21],C[21]);
    
    //column 26
    FA fa1(p[112],p[113],pp[193],S[22],C[22]);
    
    //column 27
    HF hf0(p[114],p[115],S[23],C[23]);
    
    //column 28
    HF hf1(pp[195],pp[210],S[24],C[24]);
    
    //stage 2
    
    //column 8
    approx_HF hf2(S[4],C[3],S[25],C[25]);
    
    //column 9
    compressor4_2 com19(S[5],C[4],G[9],g[22],S[26],C[26]);
    
    //column 10
    compressor4_2 com20(S[6],C[5],G[10],g[27],S[27],C[27]);
    
    //column 11
    Compressor5_2_proposed com21(S[7],C[6],G[11],G[12],Cout[0],S[28],C[28]);
    
    //column 12
    Compressor5_2_proposed com22(S[8],C[7],G[13],G[14],Cout[1],S[29],C[29]);
    
    //column 13
    Compressor_6_2_proposed com23(S[9],C[8],G[15],G[16],Cout[2],Cout[3],S[30],C[30],Cout[21]);
    
    //column 14
    Compressor_6_2_proposed com24(S[10],C[9],G[17],G[18],Cout[4],Cout[5],S[31],C[31],Cout[22]);
    
    //column 15
    compressor7_2 com25(S[11],C[10],G[19],G[20],Cout[6],Cout[7],Cout[8],Cout[23],Cout[24],S[32],C[32]);
    
    //column 16
    compressor7_2 com26(S[12],C[11],G[21],G[22],Cout[9],Cout[10],Cout[11],Cout[25],Cout[26],S[33],C[33]);
    
    //column 17
    compressor7_2 com27(S[13],C[12],G[23],G[24],Cout[12],Cout[13],Cout[14],Cout[27],Cout[28],S[34],C[34]);
    
    //column 18
    Compressor_6_2_proposed com28(S[14],C[13],G[25],G[26],Cout[15],Cout[16],S[35],C[35],Cout[29]);
    
    //column 19
    Compressor_6_2_proposed com29(S[15],C[14],G[27],G[28],Cout[17],Cout[18],S[36],C[36],Cout[30]);
    
    //column 20
    Compressor5_2_proposed com30(S[16],C[15],G[29],g[92],Cout[19],S[37],C[37]);
    
    //column 21
    Compressor5_2_proposed com31(S[17],C[16],G[30],g[97],Cout[20],S[38],C[38]);
    
    //column 22
    FA fa2(S[18],C[17],G[31],S[39],C[39]);
    
    //column 23
    FA fa3(S[19],C[18],G[32],S[40],C[40]);
    
    //column 24
    FA fa4(S[20],C[19],G[33],S[41],C[41]);
    
    //column 25
    FA fa5(S[21],C[20],G[34],S[42],C[42]);
    
    //column 26
    FA fa6(S[22],C[21],G[35],S[43],C[43]);
    
    //column 27
    FA fa7(S[23],C[22],G[36],S[44],C[44]);
    
    //column 28
    FA fa8(S[24],C[23],pp[225],S[45],C[45]);
    
    //column 29
    FA fa9(pp[211],pp[226],C[24],S[46],C[46]);
    
    
    //stage 3
    
    //column 14
    approx_HF hf3(S[31],Cout[21],S[47],C[47]);
    
    //column 15
    approx_FA fa10(S[32],C[31],Cout[22],S[48],C[48]);
    
    //column 16
    compressor4_2 com32(S[33],C[32],Cout[23],Cout[24],S[49],C[49]);
    
    //column 17
    compressor4_2 com33(S[34],C[33],Cout[25],Cout[26],S[50],C[50]);

    //column 18
    compressor4_2 com34(S[35],C[34],Cout[27],Cout[28],S[51],C[51]);
    
    //column 19
    approx_FA fa11(S[36],C[35],Cout[29],S[52],C[52]);
    
    //column 20
    approx_FA fa12(S[37],C[36],Cout[30],S[53],C[53]);
    
    //column 21
    HF hf13(S[38],C[37],S[54],C[54]);  
     
    //column 22
    HF hf4(S[39],C[38],S[55],C[55]);
    
    //column 23
    HF hf5(S[40],C[39],S[56],C[56]);
    
    //column 24
    HF hf6(S[41],C[40],S[57],C[57]);
    
    //column 25
    HF hf7(S[42],C[41],S[58],C[58]);
    
    //column 26
    HF hf8(S[43],C[42],S[59],C[59]);
    
    //column 27
    HF hf9(S[44],C[43],S[60],C[60]);
    
    //column 28
    HF hf10(S[45],C[44],S[61],C[61]);
    
    //column 29
    HF hf11(S[46],C[45],S[62],C[62]);
    
    //column 30
    HF hf12(pp[227],C[46],S[63],C[63]);
       
    
    //final stage
    
    assign m[7:0] = 8'b00000110;
    //assign x[7] = S[3];
    assign x[13:8] = S[30:25];
    assign x[30:14] = S[63:47];
    assign x[31] = 1'b0;
    //assign y[7] = G[7];
    assign y[8] = G[8];
    assign y[14:9] = C[30:25];
    assign y[31:15] = C[63:47];
    
     //column8
    or_and_cell or0(x[8],y[8],1'b0,m[8],z[8]);
    
    //column9
    or_and_cell or1(x[9],y[9],z[8],m[9],z[9]);
    
    //column10
    or_and_cell or2(x[10],y[10],z[9],m[10],z[10]);
    
    //column11
    or_and_cell or3(x[11],y[11],z[10],m[11],z[11]);
    
    //column12
    or_and_cell or4(x[12],y[12],z[11],m[12],z[12]);
    
    //column13
    or_and_cell or5(x[13],y[13],z[12],m[13],z[13]);
    
    //column14
    or_and_cell or6(x[14],y[14],z[13],m[14],z[14]);
    
    //carry prediction column15
    carry_prediction_logic cpl(x[15],y[15],z[14],m[15],z[15]);
    
    //final adder
    han_16 han0(x[31:16],y[31:16],z[15],m[31:16],c);


    endmodule