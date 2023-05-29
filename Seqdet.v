module seq_det(input x,
               input clk,
               output reg z);
  reg[1:0] state;
  parameter S0=2'b00, S1=2'b01, S2=2'b10, S3=2'b11;
  initial begin
    state=S0;
  end
  always @(posedge clk)
    case(state)
      S0:begin
        z<=0;
        state<=x?S0:S1;
      end
      S1:begin
        z<=0;
        state<=x?S2:S1;
      end
      S2:begin
        z<=0;
        state<=x?S3:S1;
      end
      S3:begin
        z<=(x==0)?1:0;
        state<=x?S0:S1;
      end
      default:begin
        z<=0;
        state<=S0;
      end
    endcase
endmodule