module stimulus_task;
  bit [5:0] addr;
  bit       wr;
  bit       en;

  task generate_stimulus(input bit [5:0] t_addr, input bit t_wr, input bit t_en);
    addr = t_addr;
    wr   = t_wr;
    en   = t_en;
  
    $display("[STIMULUS] Time: %0t | addr = %0b (%0d), wr = %0b, en = %0b", $time, addr, addr, wr, en);
    #10; 
  endtask

  initial begin
    $display("\nQuestion 7: Stimulus Generation Task");
    
    generate_stimulus(6'b001010, 1'b1, 1'b1); // Write to address 10
    generate_stimulus(6'b001010, 1'b0, 1'b1); // Read from address 10
    generate_stimulus(6'b111111, 1'b0, 1'b0); // Disable interface at address 63
  end

endmodule
