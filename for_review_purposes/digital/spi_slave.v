`timescale 1ns / 1ps

module spi_slave (
    input wire sclk,
    input wire cs,
    input wire mosi,
    input wire [7:0] data_in,
    input wire rst,
    
    // Changed to 'wire' so we can use a continuous assign for the tri-state buffer
    output wire miso,           
    output reg [7:0] data_out,
    output reg data_valid
);

    reg [7:0] rx_shift_reg;
    reg [7:0] tx_shift_reg;
    reg [2:0] bit_cnt;

    // 1. MISO Tri-State Output (The Fix from your last question!)
    // When CS is high (inactive), MISO is disconnected (1'bz).
    // When CS is low, it constantly drives the Most Significant Bit of the TX shift register.
    assign miso = (!cs) ? tx_shift_reg[7] : 1'bz;

    // 2. SPI Transmit Logic (Shift OUT on negedge SCLK)
    always @(negedge sclk or posedge cs or negedge rst) begin
        if (!rst) begin
            tx_shift_reg <= 8'h00;
        end 
        else if (cs) begin
            // Pre-load the transmit buffer while Chip Select is high.
            // This guarantees the first bit is immediately ready on MISO the moment CS drops.
            tx_shift_reg <= data_in;
        end 
        else begin
            // Shift data left on the falling edge of the clock
            tx_shift_reg <= {tx_shift_reg[6:0], 1'b0};
        end
    end

    // 3. SPI Receive Logic (Sample IN on posedge SCLK)
    always @(posedge sclk or posedge cs or negedge rst) begin
        if (!rst) begin
            rx_shift_reg <= 8'h00;
            data_out     <= 8'h00;
            bit_cnt      <= 3'd0;
            data_valid   <= 1'b0;
        end 
        else if (cs) begin
            // Asynchronous reset of the transaction state when CS goes high
            bit_cnt      <= 3'd0;
            data_valid   <= 1'b0;
        end 
        else begin
            // Shift MOSI into the receive register
            rx_shift_reg <= {rx_shift_reg[6:0], mosi};
            
            // Check if we just received the 8th bit
            if (bit_cnt == 3'd7) begin
                data_out   <= {rx_shift_reg[6:0], mosi};
                data_valid <= 1'b1; // Pulse valid high for one clock cycle
                bit_cnt    <= 3'd0; // Roll over counter for the next byte
            end 
            else begin
                bit_cnt    <= bit_cnt + 1'b1;
                data_valid <= 1'b0;
            end
        end
    end

endmodule
