# \# Serie 1 - Estudio de sumadores, simulacion en Logisim Evolution

# 

# Esta serie se enfoca en el diseño y simulación de diferentes \*\*sumadores\*\* utilizando \*\*Logisim Evolution\*\*. Adicionalmente, se realiza un \*\*análisis de tiempo\*\* para cada sumador. 

# 

# Los sumadores diseñados e implementados:

# 

# &nbsp;- \*\*Ripple Carry Adder\*\*

# &nbsp;- \*\*Carry Lookahead Adder\*\*

# &nbsp;- \*\*Prefix Adder\*\*

# 

# ---

# 

# \## Logisim Evolution File

# 

# \- `Parcial2\_S1\_Maximiliano\_Gonzalez.circ`

# 

# ---

# 

# \## Componentes \& Diagramas

# 

# \- \*\*Full Adder\*\*

# &nbsp; - !\[Full Adder](./Fotos%20Serie%201/FullAdder/FullAdder.png)

# &nbsp; - !\[Half Adder](./Fotos%20Serie%201/FullAdder/HalfAdder.png)

# 

# \- \*\*Ripple Carry Adder\*\*

# &nbsp; - !\[Ripple Carry Adder](./Fotos%20Serie%201/RippleCarryAdder/RippleCarryAdder.png)

# 

# \- \*\*Carry Look Ahead Adder\*\*

# &nbsp; - !\[Carry Look Ahead](./Fotos%20Serie%201/CarryLookAhead/CarryLookAheadAdder.png)  

# &nbsp; - !\[Logic](./Fotos%20Serie%201/CarryLookAhead/CLALogic.png)

# 

# \- \*\*Parallel Prefix Adder\*\*

# &nbsp; - !\[Initial](./Fotos%20Serie%201/ParallelPrefixAdder/Initial.png)  

# &nbsp; - !\[Tree](./Fotos%20Serie%201/ParallelPrefixAdder/TreeSchematic.png)  

# &nbsp; - !\[Carry](./Fotos%20Serie%201/ParallelPrefixAdder/Carry.png)  

# &nbsp; - !\[Sum](./Fotos%20Serie%201/ParallelPrefixAdder/Sum.png)  

# &nbsp; - !\[Final](./Fotos%20Serie%201/ParallelPrefixAdder/ParallelPrefixAdder.png)

# 

# \- \*\*Final Adder Stages\*\*

# &nbsp; - !\[PreStage](./Fotos%20Serie%201/AdderFinal/PreStage.png)  

# &nbsp; - !\[Final](./Fotos%20Serie%201/AdderFinal/AddersFinal.png)

# 

# ---

# 

# \## Análisis de Tiempo

# 

# Todas las compuestas lógicas se encontraron en \[DigiKey](https://www.digikey.com/) y en su \*\*datasheet\*\* se obtuvieron los valores de \*\*Propagation Delay\*\* y \*\*Contamination Delay\*\* para realizar los \*\*cálculos de tiempo\*\*.

# 

# &nbsp;- \[XOR Gate](https://www.digikey.com/en/products/detail/texas-instruments/SN74AHC1G86DCKR/373814)

# &nbsp; !\[XOR](./Fotos%20Serie%201/TimeCalc/XOR.png)

# &nbsp;	 - \*\*Propagation Delay:\*\* \*13ns\*

# &nbsp;	 - \*\*Contamination Delay:\*\* \*1ns\*

# ---

# &nbsp;- \[AND Gate](https://www.digikey.com/en/products/detail/texas-instruments/SN74LVC1G08DCKR/385719)

# !\[AND](./Fotos%20Serie%201/TimeCalc/AND.png)  

# &nbsp;	 - \*\*Propagation Delay:\*\* \*3.6ns\*

# &nbsp;	 - \*\*Contamination Delay:\*\* \*0.8ns\*

# ---

# &nbsp;- \[OR Gate](https://www.digikey.com/en/products/detail/texas-instruments/SN74LVC1G32DBVR/381323)

# !\[OR](./Fotos%20Serie%201/TimeCalc/OR.png)  

# &nbsp;	 - \*\*Propagation Delay:\*\* \*3.6ns\*

# &nbsp;	 - \*\*Contamination Delay:\*\* \*0.9ns\*

# 

# \### Cálculos 

# 

# &nbsp;- \*\*Ripple Carry Adder\*\*

# &nbsp;$t\_{\\mathrm{ripple}} = N\\,t\_{\\mathrm{FA}}$  

# $= 4\\,(3.6\\,\\text{ns} + 3.6\\,\\text{ns} + 13\\,\\text{ns})$  

# $= 80.8\\,\\text{ns}$

# 

# \- \*\*Carry Lookahead Adder\*\*

# $t\_{\\mathrm{CLA}} = t\_{pg} + t\_{pg\\text{-}block} + \\frac{N}{k-1}\\,t\_{\\mathrm{AND/OR}} + k\\,t\_{\\mathrm{FA}}$  

# $= 13\\,\\text{ns} + (5\\cdot 3.6\\,\\text{ns}) + \\frac{4}{4-1}\\,(2\\cdot 3.6\\,\\text{ns}) + \\big((3.6\\,\\text{ns}\\cdot 2)+13\\,\\text{ns}\\big)$  

# $= 31\\,\\text{ns} + 9.6\\,\\text{ns} + 20.2\\,\\text{ns}$  

# $= 60.8\\,\\text{ns}$

# 

# \- \*\*Prefix Adder\*\*

# $t\_{\\mathrm{PA}} = t\_{pg} + \\log\_2 N \\cdot t\_{pg\\text{-}prefix} + t\_{\\mathrm{XOR}}$  

# $= 3.6\\,\\text{ns} + \\log\_2 4 \\cdot (3.6\\,\\text{ns}\\cdot 2) + 13\\,\\text{ns}$  

# $= 31\\,\\text{ns}$

# 

# ---

# \## Casos de implementación

# 

# &nbsp;- \*\*Lentas con restricción de espacio y presupuesto\*\*

# &nbsp;	 - Se utilizarían \*\*Ripple Carry\*\* o \*\*Full Adders\*\* porque, aunque no sean tan rápidas, como las \*\*Carry Lookahead\*\* y \*\*Parallel Prefix Adders\*\*, utilizan \*\*menos espacio\*\* y menos compuertas lógicas; haciéndolas \*\*más económicas\*\* que los otros dos sumadores. 

# &nbsp;- \*\*Rápidas sin restricción de espacio y presupuesto\*\*

# &nbsp;	 - Se utilizaría el \*\*Parallel Prefix Adder\*\* porque es más rápido que el \*\*Lookahead Adder\*\* y no hay restricciones de espacio y este tipo de sumador utiliza más compuertas que los \*\*Carry Lookahead Adders\*\* y \*\*Ripple Carry Adders\*\*.

# &nbsp;

# &nbsp;- \*\*Rápidas con restricción de espacio y presupuesto\*\*

# &nbsp;	 - Se utilizarían los \*\*Carry Lookahead Adders\*\* o \*\*Parallel Prefix Adders\*\* más simples que los \*\*Kogge Stone Adders\*\*. Los \*\*Carry Lookahead Adders\*\* son ideales porque utiliza menos compuertas que los \*\*Parallel Prefix Adders\*\* y son más rápidos que los \*\*Ripple Carry Adders\*\*.

# 

# ---

# \## Video

# 

# &nbsp;- \[Video de Serie 1](https://youtu.be/YzNHJhpQjZI)

