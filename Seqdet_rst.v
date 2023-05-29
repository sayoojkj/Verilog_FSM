module seq_det(input clk,
               input x,
               input rst,
               output reg z);
  reg[1:0] cstate,nstate;
  parameter S0=2'b00 ,S1=2'b01 ,S2=2'b10 ;
  always @(posedge clk or rst)
    begin
      if(rst)
        cstate<=S0;
      else
        cstate<=nstate;
    end
  always @(cstate or x)
    case(cstate)
      S0:begin
        nstate<=x?S0:S1;
        z<=0;
      end
      S1:begin
        nstate<=x?S1:S2;
        z<=0;
      end
      S2:begin
        nstate<=x?S1:S0;
        z<=x?1:0;
      end
      default:begin
        nstate<=S0;
        z<=0;
      end
    endcase
endmodule
