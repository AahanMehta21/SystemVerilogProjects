module test_bench();
    logic [7:0] tb_val1;
    logic [7:0] tb_val2;
    logic tb_c_in;
    logic [7:0] tb_sum;
    logic tb_c_out;

    simple_adder adder1(.val1(tb_val1), .val2(tb_val2), .c_in(tb_c_in),
                 .sum(tb_sum), .c_out(tb_c_out));
    initial begin
        #1
        tb_val1=1;
        tb_val2=2;
        tb_c_in=1;
        
        #1  
        tb_val1=10;
        tb_val2=20;
        tb_c_in=0;
        
        #1
        tb_val1=55;
        tb_val2=66;
        tb_c_in=0;
        
        #1
        tb_val1=8'b11111111;
        tb_val2=1;
        tb_c_in=0;
        
        #1
        tb_val1=8'b11111111;
        tb_val2=1;
        tb_c_in=1;
        
        #1
        $finish();
    end
    
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars;
    end
endmodule: test_bench

