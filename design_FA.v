//Custom Compiler Version S-2021.09
//Tue Mar  1 06:52:21 2022

// Include files
//`include "constants.h"
//`include "disciplines.h"

// Directives
`timescale 1ns/1ns
//`default_discipline logic

////////////////////////////////////////////////////////////////////////////////
// Library          : design
// Cell             : FA
// View             : schematic
// View Search List : verilog functional behavioral cmos.sch cmos_sch schematic symbol
// View Stop List   : functional behavioral symbol
////////////////////////////////////////////////////////////////////////////////
module FA( A, B, C_in, Vdc, gnd, C_out, Sum );
    // Port declarations
    input A;
    input B;
    input C_in;
    input Vdc;
    input gnd;
    output C_out;
    output Sum;
    // Net declarations
    wire  net27;
    wire  net32;
    wire  net64;
    wire  net97;
    wire  net98;
    // Instances of SAED_PDK_32_28/pmos4t/symbol
    pmos4t  M19( Vdc, A, net97, C_out );
    pmos4t  M16( Vdc, C_in, net98, C_out );
    pmos4t  M15( Vdc, net64, net98, Sum );
    pmos4t  M12( Vdc, C_in, net97, Sum );
    pmos4t  M11( Vdc, net98, net97, Vdc );
    pmos4t  M10( Vdc, net64, C_in, Vdc );
    pmos4t  M5( Vdc, net32, net27, net97 );
    pmos4t  M4( Vdc, A, B, net97 );
    pmos4t  M3( Vdc, net32, A, Vdc );
    pmos4t  M0( Vdc, net27, B, Vdc );
    // Instances of SAED_PDK_32_28/nmos4t/symbol
    nmos4t  M18( gnd, A, net98, C_out );
    nmos4t  M17( gnd, C_in, net97, C_out );
    nmos4t  M14( gnd, net64, net97, Sum );
    nmos4t  M13( gnd, C_in, net98, Sum );
    nmos4t  M9( gnd, net64, C_in, gnd );
    nmos4t  M8( gnd, net98, net97, gnd );
    nmos4t  M7( gnd, net32, B, net97 );
    nmos4t  M6( gnd, A, net27, net97 );
    nmos4t  M2( gnd, net32, A, gnd );
    nmos4t  M1( gnd, net27, B, gnd );
endmodule //FA


// Support modules
