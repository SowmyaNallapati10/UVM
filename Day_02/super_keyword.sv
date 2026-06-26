class first; //parent class
	int data;

	function new(input int data);
		this.data = data;
	endfunction
endclass : first

class second extends first;
	int temp;

	function new(int data, int temp);
		super.new(data);
		this.temp = temp;
	endfunction
endclass: second

class third extends second;
	int xyz;
	function new(int data, int temp, int xyz);
		super.new(data, temp);
		this.xyz = xyz;
	endfunction
endclass: third

module tb;
  second s;
  third  t;
  
  initial begin
	  s = new(67, 45);
	  t = new(1, 2, 3);
	  $display("Value of data:%0d and Temp:%0d", s.data, s.temp);
	  $display("Value of data:%0d , Temp:%0d and xyz:%0d", t.data, t.temp, t.xyz);
  end
endmodule  

