module tb_OneShoot;

reg clk;
reg signal;
wire trigger;

// Instanciaci�n del m�dulo OneShoot
OneShoot uut (
    .clk(clk),
    .signal(signal),
    .trigger(trigger)
);

// Inicializaci�n del reloj y la se�al
initial begin
    clk = 0;
    signal = 0;
end

// Generaci�n del reloj
always #5 clk = ~clk;

// Secuencia de prueba
initial begin
    $monitor("Time = %0d : clk = %b, signal = %b, trigger = %b", $time, clk, signal, trigger);
    
    #10 signal = 1;  // Cambia signal a 1 (debe generar trigger)
    #10 signal = 0;  // Cambia signal a 0
    #20 signal = 1;  // Cambia signal a 1 otra vez (debe generar trigger)
    #10 signal = 0;  // Cambia signal a 0 otra vez
    #20 signal = 1;  // Cambia signal a 1 de nuevo (debe generar trigger)
    #10 signal = 0;  // Cambia signal a 0
    #20 signal = 1;  // Cambia signal a 1 de nuevo (debe generar trigger)
    #10 signal = 0;  // Cambia signal a 0
    #20 $finish;     // Termina la simulaci�n
end

endmodule

