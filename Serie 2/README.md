# Serie 2 - Simulación e implementación de ALU

En esta serie se implementa y simula una **Arithmetic Logic Unit (ALU)** personalizada que realiza cuatro operaciones en **Vivado** y en **Logisim Evolution**.  
Con base en el número de carne, se implementaron las siguientes operaciones en **registros de 7 bits**:

- **Suma**
- **Resta**
- **AND**
- **OR**

Después se agregaron:
- **Shift Left**
- **Shift Right**

Finalmente, se implementó la **ALU** en **Vivado** (SystemVerilog), donde se simuló y se mostraron los resultados.

## Main Files
- `Parcial2_S2_Maximiliano_Gonzalez.circ`
- **Módulos de Vivado:**
  - `ALU.sv`, `ALUMain.sv`
  - `Adder2bits.sv`, `Adder3bits.sv`, `Adder4bits.sv`
  - `RippleAdder.sv`, `FullAdder.sv`
  - `Decoders.sv`
  - `A_Shifter.sv`

## Componentes & Diagramas de la ALU

- **Diseño Final**
  - ![Final](./Fotos%20Serie%202/ALU%20Final/Final.png)
  - ![No Shifter](./Fotos%20Serie%202/ALU%20Final/NoShifter.png)
  - ![With Shifter](./Fotos%20Serie%202/ALU%20Final/WithShifter.png)

- **Aritmética**
  - ![RippleCarryAdder7Bits](./Fotos%20Serie%202/ALU%20Components/Arithmetic/RippleCarryAdder7Bits.png)

- **Lógica**
  - ![AND](./Fotos%20Serie%202/ALU%20Components/Logic/AND.png)
  - ![OR](./Fotos%20Serie%202/ALU%20Components/Logic/OR.png)

- **Shifter**
  - ![Shift Left](./Fotos%20Serie%202/ALU%20Components/Shifter/ShiftLeft.png)
  - ![Shift Right](./Fotos%20Serie%202/ALU%20Components/Shifter/ShiftRight.png)

- **Flags**
  - ![Carry](./Fotos%20Serie%202/ALU%20Components/Flags/Carry.png)
  - ![Carry Shifter](./Fotos%20Serie%202/ALU%20Components/Flags/CarryShifter.png)
  - ![Overflow](./Fotos%20Serie%202/ALU%20Components/Flags/Overflow.png)
  - ![Overflow Shifter](./Fotos%20Serie%202/ALU%20Components/Flags/OverflowShifter.png)
  - ![Zero/Negative](./Fotos%20Serie%202/ALU%20Components/Flags/ZeroNegative.png)

## Video
- https://youtu.be/cjtGvaAZd4Q
