# Serie 1 - Estudio de sumadores, simulación en Logisim Evolution

Esta serie se enfoca en el diseño y simulación de diferentes **sumadores** utilizando **Logisim Evolution**.  
Adicionalmente, se realiza un **análisis de tiempo** para cada sumador.

**Sumadores diseñados e implementados**
- **Ripple Carry Adder**
- **Carry Lookahead Adder**
- **Parallel Prefix Adder**

## Logisim Evolution File
- `Parcial2_S1_Maximiliano_Gonzalez.circ`

## Componentes & Diagramas

- **Full Adder**
  - ![Full Adder](./Fotos%20Serie%201/FullAdder/FullAdder.png)
  - ![Half Adder](./Fotos%20Serie%201/FullAdder/HalfAdder.png)

- **Ripple Carry Adder**
  - ![Ripple Carry Adder](./Fotos%20Serie%201/RippleCarryAdder/RippleCarry.png)

- **Carry Look Ahead Adder**
  - ![Carry Look Ahead](./Fotos%20Serie%201/CarryLookAhead/CarryLookAheadAdder.png)
  - ![Logic](./Fotos%20Serie%201/CarryLookAhead/CLALogic.png)

- **Parallel Prefix Adder**
  - ![Initial](./Fotos%20Serie%201/ParallelPrefixAdder/Initial.png)
  - ![Tree](./Fotos%20Serie%201/ParallelPrefixAdder/TreeSchematic.png)
  - ![Carry](./Fotos%20Serie%201/ParallelPrefixAdder/Carry.png)
  - ![Sum](./Fotos%20Serie%201/ParallelPrefixAdder/Sum.png)
  - ![Final](./Fotos%20Serie%201/ParallelPrefixAdder/ParallelPrefixAdder.png)

- **Final Adder Stages**
  - ![PreStage](./Fotos%20Serie%201/AdderFinal/PreStage.png)
  - ![Final](./Fotos%20Serie%201/AdderFinal/AddersFinal.png)

## Análisis de Tiempo

Las **compuertas lógicas** se referencian desde DigiKey y, según sus **datasheets**, se tomaron **Propagation Delay** y **Contamination Delay** para los cálculos.

- XOR Gate — https://www.digikey.com/en/products/detail/texas-instruments/SN74AHC1G86DCKR/373814  
  ![XOR](./Fotos%20Serie%201/TimeCalc/XOR.png)  
  **Propagation delay:** *13 ns*  
  **Contamination delay:** *1 ns*

- AND Gate — https://www.digikey.com/en/products/detail/texas-instruments/SN74LVC1G08DCKR/385719  
  ![AND](./Fotos%20Serie%201/TimeCalc/AND.png)  
  **Propagation delay:** *3.6 ns*  
  **Contamination delay:** *0.8 ns*

- OR Gate — https://www.digikey.com/en/products/detail/texas-instruments/SN74LVC1G32DBVR/381323  
  ![OR](./Fotos%20Serie%201/TimeCalc/OR.png)  
  **Propagation delay:** *3.6 ns*  
  **Contamination delay:** *0.9 ns*

### Cálculos (izquierda, sin centrar)

**Ripple Carry Adder**  
$t_{\mathrm{ripple}} = N\,t_{\mathrm{FA}}$  
$= 4\,(3.6\,\text{ns} + 3.6\,\text{ns} + 13\,\text{ns})$  
$= 80.8\,\text{ns}$

**Carry Lookahead Adder**  
$t_{\mathrm{CLA}} = t_{pg} + t_{pg\text{-}block} + \frac{N}{k-1}\,t_{\mathrm{AND/OR}} + k\,t_{\mathrm{FA}}$  
$= 13\,\text{ns} + (5\cdot 3.6\,\text{ns}) + \frac{4}{4-1}\,(2\cdot 3.6\,\text{ns}) + \big((3.6\,\text{ns}\cdot 2)+13\,\text{ns}\big)$  
$= 31\,\text{ns} + 9.6\,\text{ns} + 20.2\,\text{ns}$  
$= 60.8\,\text{ns}$

**Parallel Prefix Adder**  
$t_{\mathrm{PA}} = t_{pg} + \log_2 N \cdot t_{pg\text{-}prefix} + t_{\mathrm{XOR}}$  
$= 3.6\,\text{ns} + \log_2 4 \cdot (3.6\,\text{ns}\cdot 2) + 13\,\text{ns}$  
$= 31\,\text{ns}$

### Casos de implementación
- **Lentas con restricción de espacio y presupuesto:** se utilizarían **Ripple Carry** o **Full Adders**; menos compuertas → menor costo/área.  
- **Rápidas sin restricción de espacio y presupuesto:** **Parallel Prefix Adder** (p. ej., Kogge-Stone) por su menor profundidad lógica.  
- **Rápidas con restricción de espacio y presupuesto:** **Carry Lookahead Adders** o **Parallel Prefix** más simples (menos fan-out/etapas) como compromiso entre velocidad y área.

## Video
- https://youtu.be/YzNHJhpQjZI