class first; //parent class
	int data =12;

	virtual function void display();
		$display("FIRST : Value of data: %0d", data);
	endfunction
endclass: first

class second extends first;
	int temp = 34;
	function void display();
		$display("SECOND : Value of data : %0d", temp);
	endfunction

	function void add();
		$display("second: Value after process : %0d", temp+4);
	endfunction
endclass: second


module tb;
	first f;
	second s;

initial begin
	f = new();
	s = new();

	f = s;
	f.display();

end
endmodule



