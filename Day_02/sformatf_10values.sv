`include "uvm_macros.svh"
import uvm_pkg::*;

module top;

  initial begin
    for (int i = 1; i <= 10; i++) begin
      `uvm_info("SIMPLIFIED", $sformatf("Value: %0d", i), UVM_LOW)
    end
  end

endmodule
