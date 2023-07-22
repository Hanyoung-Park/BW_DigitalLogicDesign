// ============= 과제 설명 ============= 
// S가 1이고 R이 0인 경우 Q는 1이 되고 Qn은 0이 됩니다.
// S가 0이고 R이 1인 경우 Q는 0이 되고 Qn은 1이 됩니다.


module sr_latch(
  input S, 
  input R, 
  output reg Q, 
  output reg Qn
);

  always @(*) begin
    // ---------- Implement below this line ----------------

    // ---------- Implement above this line ----------------
  end

endmodule


module testbench;
  reg S, R;
  wire Q, Qn;
  
  sr_latch sr_latch_inst(
    .S(S),
    .R(R),
    .Q(Q),
    .Qn(Qn)
  );
  
  initial begin
    // Test case 1: Set (S = 1, R = 0)
    S = 1; R = 0;
    #5;
    // Expected output: Q = 1, Qn = 0
    $display("Q: %b, Qn: %b", Q, Qn);
  
    // Test case 2: Reset (S = 0, R = 1)
    S = 0; R = 1;
    #5;
    // Expected output: Q = 0, Qn = 1
    $display("Q: %b, Qn: %b", Q, Qn);
  
    // Test case 3: Hold (S = 0, R = 0)
    S = 0; R = 0;
    #5;
    // Expected output: Q and Qn should hold their previous states
    $display("Q: %b, Qn: %b", Q, Qn);
  
    $finish;
  end
  
endmodule
