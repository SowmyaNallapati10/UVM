module multiple_8;

  typedef int array_t[32];

  function array_t generate_multiples();
    array_t local_arr;
    
    for (int i = 0; i < 32; i++) begin
      local_arr[i] = i * 8;
    end
    
    return local_arr;
  endfunction

  initial begin
    array_t result;
    $display("Question 8: Multiples of 8");
    
    result = generate_multiples();
    
    foreach (result[i]) begin
      $display("Result[%0d] = %0d", i, result[i]);
    end
  end

endmodule
