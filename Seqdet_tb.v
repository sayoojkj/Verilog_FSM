#! /c/iverilog/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_01082AC8 .scope module, "seq_det" "seq_det" 2 1;
 .timescale 0 0;
P_01082B54 .param/l "S0" 2 5, C4<00>;
P_01082B68 .param/l "S1" 2 5, C4<01>;
P_01082B7C .param/l "S2" 2 5, C4<10>;
P_01082B90 .param/l "S3" 2 5, C4<11>;
v01082BB0_0 .net "clk", 0 0, C4<z>; 0 drivers
v0108EDE8_0 .var "state", 1 0;
v0108EE40_0 .net "x", 0 0, C4<z>; 0 drivers
v0108EE98_0 .var "z", 0 0;
E_01087C48 .event posedge, v01082BB0_0;
    .scope S_01082AC8;
T_0 ;
    %set/v v0108EDE8_0, 0, 2;
    %end;
    .thread T_0;
    .scope S_01082AC8;
T_1 ;
    %wait E_01087C48;
    %load/v 8, v0108EDE8_0, 2;
    %cmpi/u 8, 0, 2;
    %jmp/1 T_1.0, 6;
    %cmpi/u 8, 1, 2;
    %jmp/1 T_1.1, 6;
    %cmpi/u 8, 2, 2;
    %jmp/1 T_1.2, 6;
    %cmpi/u 8, 3, 2;
    %jmp/1 T_1.3, 6;
    %ix/load 0, 1, 0;
    %assign/v0 v0108EE98_0, 0, 0;
    %ix/load 0, 2, 0;
    %assign/v0 v0108EDE8_0, 0, 0;
    %jmp T_1.5;
T_1.0 ;
    %ix/load 0, 1, 0;
    %assign/v0 v0108EE98_0, 0, 0;
    %load/v 8, v0108EE40_0, 1;
    %jmp/0  T_1.6, 8;
    %mov 9, 0, 2;
    %jmp/1  T_1.8, 8;
T_1.6 ; End of true expr.
    %movi 11, 1, 2;
    %jmp/0  T_1.7, 8;
 ; End of false expr.
    %blend  9, 11, 2; Condition unknown.
    %jmp  T_1.8;
T_1.7 ;
    %mov 9, 11, 2; Return false value
T_1.8 ;
    %ix/load 0, 2, 0;
    %assign/v0 v0108EDE8_0, 0, 9;
    %jmp T_1.5;
T_1.1 ;
    %ix/load 0, 1, 0;
    %assign/v0 v0108EE98_0, 0, 0;
    %load/v 8, v0108EE40_0, 1;
    %jmp/0  T_1.9, 8;
    %movi 9, 2, 2;
    %jmp/1  T_1.11, 8;
T_1.9 ; End of true expr.
    %movi 11, 1, 2;
    %jmp/0  T_1.10, 8;
 ; End of false expr.
    %blend  9, 11, 2; Condition unknown.
    %jmp  T_1.11;
T_1.10 ;
    %mov 9, 11, 2; Return false value
T_1.11 ;
    %ix/load 0, 2, 0;
    %assign/v0 v0108EDE8_0, 0, 9;
    %jmp T_1.5;
T_1.2 ;
    %ix/load 0, 1, 0;
    %assign/v0 v0108EE98_0, 0, 0;
    %load/v 8, v0108EE40_0, 1;
    %jmp/0  T_1.12, 8;
    %mov 9, 1, 2;
    %jmp/1  T_1.14, 8;
T_1.12 ; End of true expr.
    %movi 11, 1, 2;
    %jmp/0  T_1.13, 8;
 ; End of false expr.
    %blend  9, 11, 2; Condition unknown.
    %jmp  T_1.14;
T_1.13 ;
    %mov 9, 11, 2; Return false value
T_1.14 ;
    %ix/load 0, 2, 0;
    %assign/v0 v0108EDE8_0, 0, 9;
    %jmp T_1.5;
T_1.3 ;
    %load/v 8, v0108EE40_0, 1;
    %mov 9, 0, 1;
    %cmpi/u 8, 0, 2;
    %mov 8, 4, 1;
    %jmp/0  T_1.15, 8;
    %mov 9, 1, 1;
    %jmp/1  T_1.17, 8;
T_1.15 ; End of true expr.
    %jmp/0  T_1.16, 8;
 ; End of false expr.
    %blend  9, 0, 1; Condition unknown.
    %jmp  T_1.17;
T_1.16 ;
    %mov 9, 0, 1; Return false value
T_1.17 ;
    %ix/load 0, 1, 0;
    %assign/v0 v0108EE98_0, 0, 9;
    %load/v 8, v0108EE40_0, 1;
    %jmp/0  T_1.18, 8;
    %mov 9, 0, 2;
    %jmp/1  T_1.20, 8;
T_1.18 ; End of true expr.
    %movi 11, 1, 2;
    %jmp/0  T_1.19, 8;
 ; End of false expr.
    %blend  9, 11, 2; Condition unknown.
    %jmp  T_1.20;
T_1.19 ;
    %mov 9, 11, 2; Return false value
T_1.20 ;
    %ix/load 0, 2, 0;
    %assign/v0 v0108EDE8_0, 0, 9;
    %jmp T_1.5;
T_1.5 ;
    %jmp T_1;
    .thread T_1;
# The file index is used to find the file name in the following table.
:file_names 3;
    "N/A";
    "<interactive>";
    "Seqdet.v";
