//SV Topics : Polymorphism
//Problem statement : to generate even and odd parity using polymorphism
//======================================

class parity;			//parent class
  bit p;
  bit [7:0] data;
  virtual function void calculate(bit [7:0]);			//empty virtual function
    $display("Parity calculate function does nothing");
  endfunction
endclass

class even_parity extends parity;		//even_parity is child class of parity
  extern virtual function void calculate(bit [7:0]);
endclass

function void even_parity::calculate(bit [7:0] data);
  super.data = data;			//super keyword to access parent class member
  super.p = ^super.data;		//calculating parity using XOR reduction operator
  $display("\nEven parity = %b", super.p);
endfunction

class odd_parity extends parity;			//odd parity is also a child class of parity
  extern virtual function void calculate(bit [7:0]);
endclass

function void odd_parity::calculate(bit [7:0] data);
  super.data = data;			
  super.p = !(^super.data);			//inverting the XOR reduction operator
  $display("\nOdd parity = %b", super.p);
endfunction

module test;
  parity h;			//parent class handle
  even_parity eph;	//child class handle
  odd_parity oph;	//child class handle
  
  initial begin
    eph = new;	//child class object creation
    oph = new;
    
    h = eph;		//assigning child class object to parent class handle
    //h = oph;		//uncomment to generate odd parity
    
    h.calculate(8'b11000001);  //data which requires parity
    $finish();
  end
endmodule
