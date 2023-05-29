module parity(
  input x,
  input clk,
  output reg z
);
  reg even_odd;
  parameter Even = 1'b0, Odd = 1'b1;

  always @(posedge clk)
    case (even_odd)
      Even: begin
        z <= x ? 1 : 0;
        even_odd <= x ? Odd:Even;
      end
      Odd: begin
        z <= x ? 0 : 1;
        even_odd <= x ? Even:Odd;
      end
      default: begin
        z <= 0;
        even_odd <= Even;
      end
    endcase
endmodule