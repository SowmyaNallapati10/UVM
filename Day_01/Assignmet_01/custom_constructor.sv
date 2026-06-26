class Custom_constructor;
  bit [7:0] a;
  bit [7:0] b;
  bit [7:0] c;

  function new(bit [7:0] val_a, bit [7:0] val_b, bit [7:0] val_c);
    a = val_a;
    b = val_b;
    c = val_c;
  endfunction

  function void display();
    $display("Class Variables: a = %0d, b = %0d, c = %0d", a, b, c);
  endfunction
endclass

module test_custom_constructor;
  initial begin
    Custom_constructor obj;
    $display("\nQuestion 9: Custom Constructor");

    obj = new(2, 4, 56);
    obj.display();
  end
endmodule
