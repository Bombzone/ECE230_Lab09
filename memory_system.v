module memory_system
#(
    parameter NUM_BYTES = 4 
)(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);
    wire [NUM_BYTES - 1:0] sel;
    wire [7:0] bytes0;
    wire [7:0] bytes1;
    wire [7:0] bytes2;
    wire [7:0] bytes3;
    
    demux selDemux(
        .data(store),
        .sel(addr),
        .A(sel[0]),
        .B(sel[1]),
        .C(sel[2]),
        .D(sel[3])
    );
    byte_memory mem1(
                .data(data),
                .store(sel[0]),
                .memory(bytes0)
    );
    byte_memory mem2(
                .data(data),
                .store(sel[1]),
                .memory(bytes1)
    );
    byte_memory mem3(
                .data(data),
                .store(sel[2]),
                .memory(bytes2)
    );
    byte_memory mem4(
                .data(data),
                .store(sel[3]),
                .memory(bytes3)
    );
//    genvar i;
//    generate 
//        for (i = 0; i < NUM_BYTES; i= i + 1) begin 
//            byte_memory mem(
//                .data(in[i]),
//                .store(sel[i]),
//                .memory(bytes[i])
//            );
//        end
//    endgenerate
    
    mux outMux(
        .Sel(addr),
        .A(bytes0),
        .B(bytes1),
        .C(bytes2),
        .D(bytes3),
        .out(memory)
    );
    
    
    // This should instantiate 4 instances of
    // byte_memory, and then demultiplex
    // data and store into the one selected by
    // addr

    // It should then multiplex the output of the
    // memory specified by addr into the memory
    // output for display on the LEDs

    // you will need 2 demultiplexers:
    // 1. Demultiplex data -> selected byte
    // 2. Demultiplex store -> selected byte

    // and one multiplexer:
    // 1. Multiplex selected byte -> memory

endmodule
