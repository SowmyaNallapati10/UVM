class Generator;
  int data;

  function Generator copy();
    Generator temp = new();
    temp.data = this.data; 
    return temp;
  endfunction
endclass

module test_deep_copy;
  initial begin
    Generator original;
    Generator cloned;
    
    $display("\nQuestion 11: Deep Copy");
    
    original = new();
    original.data = 150;
    
    cloned = original.copy();
   
    $display("Original data: %0d | Cloned data: %0d", original.data, cloned.data);
    
    if (original == cloned) begin
      $display("Verification Failed: Both share the same handle reference.");
    end else begin
      $display("SUCCESS: Objects contain identical values but occupy DIFFERENT memory handles.");
    end
  end
endmodule
