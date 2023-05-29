#! /c/iverilog/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_010E2B50 .scope module, "parity" "parity" 2 1;
 .timescale 0 0;
P_010E2FD4 .param/l "Even" 2 7, C4<0>;
P_010E2FE8 .param/l "Odd" 2 7, C4<1>;
v010E2BD8_0 .net "clk", 0 0, C4<z>; 0 drivers
v010E2F50_0 .var "even_odd", 0 0;
v010E49D8_0 .net "x", 0 0, C4<z>; 0 drivers
v010E4A30_0 .var "z", 0 0;
E_010E7898 .event posedge, v010E2BD8_0;
    .scope S_010E2B50;
T_0 ;
    %wait E_010E7898;
    %load/v 8, v010E2F50_0, 1;
    %cmpi/u 8, 0, 1;
    %jmp/1 T_0.0, 6;
    %cmpi/u 8, 1, 1;
    %jmp/1 T_0.1, 6;
    %ix/load 0, 1, 0;
    %assign/v0 v010E4A30_0, 0, 0;
    %ix/load 0, 1, 0;
    %assign/v0 v010E2F50_0, 0, 0;
    %jmp T_0.3;
T_0.0 ;
    %load/v 8, v010E49D8_0, 1;
    %jmp/0  T_0.4, 8;
    %mov 9, 1, 1;
    %jmp/1  T_0.6, 8;
T_0.4 ; End of true expr.
    %jmp/0  T_0.5, 8;
 ; End of false expr.
    %blend  9, 0, 1; Condition unknown.
    %jmp  T_0.6;
T_0.5 ;
    %mov 9, 0, 1; Return false value
T_0.6 ;
    %ix/load 0, 1, 0;
    %assign/v0 v010E4A30_0, 0, 9;
    %load/v 8, v010E49D8_0, 1;
    %jmp/0  T_0.7, 8;
    %mov 9, 1, 1;
    %jmp/1  T_0.9, 8;
T_0.7 ; End of true expr.
    %jmp/0  T_0.8, 8;
 ; End of false expr.
    %blend  9, 0, 1; Condition unknown.
    %jmp  T_0.9;
T_0.8 ;
    %mov 9, 0, 1; Return false value
T_0.9 ;
    %ix/load 0, 1, 0;
    %assign/v0 v010E2F50_0, 0, 9;
    %jmp T_0.3;
T_0.1 ;
    %load/v 8, v010E49D8_0, 1;
    %jmp/0  T_0.10, 8;
    %mov 9, 0, 1;
    %jmp/1  T_0.12, 8;
T_0.10 ; End of true expr.
    %jmp/0  T_0.11, 8;
 ; End of false expr.
    %blend  9, 1, 1; Condition unknown.
    %jmp  T_0.12;
T_0.11 ;
    %mov 9, 1, 1; Return false value
T_0.12 ;
    %ix/load 0, 1, 0;
    %assign/v0 v010E4A30_0, 0, 9;
    %load/v 8, v010E49D8_0, 1;
    %jmp/0  T_0.13, 8;
    %mov 9, 0, 1;
    %jmp/1  T_0.15, 8;
T_0.13 ; End of true expr.
    %jmp/0  T_0.14, 8;
 ; End of false expr.
    %blend  9, 1, 1; Condition unknown.
    %jmp  T_0.15;
T_0.14 ;
    %mov 9, 1, 1; Return false value
T_0.15 ;
    %ix/load 0, 1, 0;
    %assign/v0 v010E2F50_0, 0, 9;
    %jmp T_0.3;
T_0.3 ;
    %jmp T_0;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 3;
    "N/A";
    "<interactive>";
    "Paritychecker.v";
