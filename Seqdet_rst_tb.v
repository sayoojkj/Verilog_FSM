#! /c/iverilog/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_01132B50 .scope module, "seq_det" "seq_det" 2 1;
 .timescale 0 0;
P_01132BDC .param/l "S0" 2 6, C4<00>;
P_01132BF0 .param/l "S1" 2 6, C4<01>;
P_01132C04 .param/l "S2" 2 6, C4<10>;
v01133310_0 .net "clk", 0 0, C4<z>; 0 drivers
v0113EC50_0 .var "cstate", 1 0;
v0113ECA8_0 .var "nstate", 1 0;
v0113ED00_0 .net "rst", 0 0, C4<z>; 0 drivers
v0113ED58_0 .net "x", 0 0, C4<z>; 0 drivers
v0113EDB0_0 .var "z", 0 0;
E_01137228 .event edge, v0113ED58_0, v0113EC50_0;
E_00FA1A10/0 .event edge, v0113ED00_0;
E_00FA1A10/1 .event posedge, v01133310_0;
E_00FA1A10 .event/or E_00FA1A10/0, E_00FA1A10/1;
    .scope S_01132B50;
T_0 ;
    %wait E_00FA1A10;
    %load/v 8, v0113ED00_0, 1;
    %jmp/0xz  T_0.0, 8;
    %ix/load 0, 2, 0;
    %assign/v0 v0113EC50_0, 0, 0;
    %jmp T_0.1;
T_0.0 ;
    %load/v 8, v0113ECA8_0, 2;
    %ix/load 0, 2, 0;
    %assign/v0 v0113EC50_0, 0, 8;
T_0.1 ;
    %jmp T_0;
    .thread T_0;
    .scope S_01132B50;
T_1 ;
    %wait E_01137228;
    %load/v 8, v0113EC50_0, 2;
    %cmpi/u 8, 0, 2;
    %jmp/1 T_1.0, 6;
    %cmpi/u 8, 1, 2;
    %jmp/1 T_1.1, 6;
    %cmpi/u 8, 2, 2;
    %jmp/1 T_1.2, 6;
    %ix/load 0, 2, 0;
    %assign/v0 v0113ECA8_0, 0, 0;
    %ix/load 0, 1, 0;
    %assign/v0 v0113EDB0_0, 0, 0;
    %jmp T_1.4;
T_1.0 ;
    %load/v 8, v0113ED58_0, 1;
    %jmp/0  T_1.5, 8;
    %mov 9, 0, 2;
    %jmp/1  T_1.7, 8;
T_1.5 ; End of true expr.
    %movi 11, 1, 2;
    %jmp/0  T_1.6, 8;
 ; End of false expr.
    %blend  9, 11, 2; Condition unknown.
    %jmp  T_1.7;
T_1.6 ;
    %mov 9, 11, 2; Return false value
T_1.7 ;
    %ix/load 0, 2, 0;
    %assign/v0 v0113ECA8_0, 0, 9;
    %ix/load 0, 1, 0;
    %assign/v0 v0113EDB0_0, 0, 0;
    %jmp T_1.4;
T_1.1 ;
    %load/v 8, v0113ED58_0, 1;
    %jmp/0  T_1.8, 8;
    %movi 9, 1, 2;
    %jmp/1  T_1.10, 8;
T_1.8 ; End of true expr.
    %movi 11, 2, 2;
    %jmp/0  T_1.9, 8;
 ; End of false expr.
    %blend  9, 11, 2; Condition unknown.
    %jmp  T_1.10;
T_1.9 ;
    %mov 9, 11, 2; Return false value
T_1.10 ;
    %ix/load 0, 2, 0;
    %assign/v0 v0113ECA8_0, 0, 9;
    %ix/load 0, 1, 0;
    %assign/v0 v0113EDB0_0, 0, 0;
    %jmp T_1.4;
T_1.2 ;
    %load/v 8, v0113ED58_0, 1;
    %jmp/0  T_1.11, 8;
    %movi 9, 1, 2;
    %jmp/1  T_1.13, 8;
T_1.11 ; End of true expr.
    %jmp/0  T_1.12, 8;
 ; End of false expr.
    %blend  9, 0, 2; Condition unknown.
    %jmp  T_1.13;
T_1.12 ;
    %mov 9, 0, 2; Return false value
T_1.13 ;
    %ix/load 0, 2, 0;
    %assign/v0 v0113ECA8_0, 0, 9;
    %load/v 8, v0113ED58_0, 1;
    %jmp/0  T_1.14, 8;
    %mov 9, 1, 1;
    %jmp/1  T_1.16, 8;
T_1.14 ; End of true expr.
    %jmp/0  T_1.15, 8;
 ; End of false expr.
    %blend  9, 0, 1; Condition unknown.
    %jmp  T_1.16;
T_1.15 ;
    %mov 9, 0, 1; Return false value
T_1.16 ;
    %ix/load 0, 1, 0;
    %assign/v0 v0113EDB0_0, 0, 9;
    %jmp T_1.4;
T_1.4 ;
    %jmp T_1;
    .thread T_1, $push;
# The file index is used to find the file name in the following table.
:file_names 3;
    "N/A";
    "<interactive>";
    "Seqdet_rst.v";
