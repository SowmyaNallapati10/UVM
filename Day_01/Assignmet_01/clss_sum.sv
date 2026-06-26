class Class_sum;
  bit [3:0] a;
  bit [3:0] b;
  bit [3:0] c;

  task calc_and_display(output bit [5:0] total_sum);
    total_sum = a + b + c; 
    $display("Inputs: a=%0d, b=%0d, c=%0d | Output Sum=%0d", a, b, c, total_sum);
  endtask
endclass

module test_sum_class;
  initial begin
    Class_sum obj;
    bit [5:0] result_sum;
    
    $display("\nQuestion 10: Class Task with Sum");
    obj = new();
    
    // Assign values to class variables
    obj.a = 4'd10;
    obj.b = 4'd5;
    obj.c = 4'd12;
    
    // Call the task
    obj.calc_and_display(result_sum);
  end
endmodule
