// Demonstrating the difference between blocking and non-blocking assignments
  logic clk, we;
  logic [1:0] a;
  logic [3:0] di, do;
  logic [7:0] mem [3:0];
  
// The standard equals sign is the normal blocking assignment
// Our lines of code appear to happen in sequence. 
  always_ff @(posedge clk) begin
    if(we) mem[a] = di;
    do = mem[a];
  end

// The <= is a "non-blocking assignment"
// Which allows our lines of verilog assignment code to happen simultaneously. 
  always_ff @(posedge clk) begin
    if(we) mem[a] <= di;
    do <= mem[a];
  end
