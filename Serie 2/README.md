# \# Serie 2 - Simulación e Implementación de ALU

# 

# En esta serie se implementa y simula un \*\*Arithmetic Logic Unit (ALU)\*\* personalizado que puede realizar cuatro operaciones en \*\*Vivado\*\* y en \*\*Logisim Evolution\*\*. Como se indico, a base de mi carne, se implementaron las siguientes operaciones en \*\*registros de 7 bits\*\*:

# 

# &nbsp;- \*\*Suma\*\*

# &nbsp;- \*\*Resta\*\*

# &nbsp;- \*\*AND\*\*

# &nbsp;- \*\*OR\*\*

# 

# Después de haber implementado correctamente las operaciones, se agregaron las operaciones

# 

# &nbsp;- \*\*Shift Left\*\*

# &nbsp;- \*\*Shift Right\*\*

# 

# Finalmente, se implemento la \*\*ALU\*\* en \*\*Vivado\*\*, utilizando \*\*SystemVerilog\*\* donde se simulo y mostro los resultados obtenidos. 

# 

# ---

# 

# \## Main Files

# 

# \- `Parcial2\_S2\_Maximiliano\_Gonzalez.circ`

# \- \*\*Modulos de Vivado\*\*:  

# &nbsp; - `ALU.sv`, `ALUMain.sv`  

# &nbsp; - `Adder2bits.sv`, `Adder3bits.sv`, `Adder4bits.sv`  

# &nbsp; - `RippleAdder.sv`, `FullAdder.sv`  

# &nbsp; - `Decoders.sv`  

# &nbsp; - `A\_Shifter.sv`

# 

# ---

# 

# \## Componentes \& Diagramas de la ALU

# 

# \- \*\*Diseño Final\*\*

# &nbsp; - !\[Final](./Fotos%20Serie%202/ALU%20Final/Final.png)  

# &nbsp; - !\[No Shifter](./Fotos%20Serie%202/ALU%20Final/NoShifter.png)  

# &nbsp; - !\[With Shifter](./Fotos%20Serie%202/ALU%20Final/WithShifter/ShifterFinal.png)

# 

# \- \*\*Aritmética\*\*

# &nbsp; - !\[RippleCarryAdder7Bits](./Fotos%20Serie%202/ALU%20Components/Arithmetic/RippleCarryAdder7Bits.png)

# 

# \- \*\*Lógica\*\*

# &nbsp; - !\[AND](./Fotos%20Serie%202/ALU%20Components/Logic/AND.png)  

# &nbsp; - !\[OR](./Fotos%20Serie%202/ALU%20Components/Logic/OR.png)

# 

# \- \*\*Shifter\*\*

# &nbsp; - !\[Shift Left](./Fotos%20Serie%202/ALU%20Components/Shifter/ShiftLeft.png)  

# &nbsp; - !\[Shift Right](./Fotos%20Serie%202/ALU%20Components/Shifter/ShiftRight.png)

# 

# \- \*\*Flags\*\*

# &nbsp; - !\[Carry](./Fotos%20Serie%202/ALU%20Components/Flags/Carry.png)  

# &nbsp; - !\[Carry Shifter](./Fotos%20Serie%202/ALU%20Components/Flags/CarryShifter.png)  

# &nbsp; - !\[Overflow](./Fotos%20Serie%202/ALU%20Components/Flags/Overflow.png)  

# &nbsp; - !\[Overflow Shifter](./Fotos%20Serie%202/ALU%20Components/Flags/OverflowShifter.png)  

# &nbsp; - !\[Zero/Negative](./Fotos%20Serie%202/ALU%20Components/Flags/ZeroNegative.png)

# 

# ---

# 

# \## Video

# 

# &nbsp;- \[Video de Serie 2](https://youtu.be/cjtGvaAZd4Q)

