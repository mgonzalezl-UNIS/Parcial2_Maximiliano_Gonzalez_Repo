# \# Serie 4 - Microcontroladores MMIO

# 

# En esta serie se hizo un \*\*reloj\*\* utilizando cuatro \*\*displays de siete segmentos\*\* en \*\*STM32CubeIDE\*\*. El reloj tiene la \*\*opción\*\* de \*\*formato de 12 y 24 horas(seleccionable mediante un botón)\*\* y una \*\*alarma\*\* que solo se desarma al presionar otro \*\*botón\*\*. 

# 

# ---

# 

# \## Contenido

# 

# \- `S4\_Maximiliano\_Gonzalez.c` (source code)

# 

# ---

# 

# \## Descripción 

# 

# El reloj se realizo utilizando la técnica de \*\*multiplexing\*\* en un modulo de cuatro displays de siete segmentos(\*\*cátodo común\*\*). Cada display tiene un pin al cual llega su señal de enable mediante un \*\*transistor NPN\*\* que permite que se encienda y se apague el display. 

# 

# Para poder hacer pruebas, el reloj tiene una opción para acelerar el tiempo mediante la variable definida \*\*FAKE\_SEC\_MS\*\*(paso de tiempo normal seria 1000 ms). Por la limitación de cuatro displays de siete segmentos, de derecha a izquierda, se muestran los \*\*decimales\*\* de las \*\*horas\*\*, las \*\*unidades\*\* de \*\*horas\*\*, los \*\*decimales\*\* de los \*\*minutos\*\* y las \*\*unidades\*\* de los \*\*minutos\*\*.  

# 

# ---

# 

# \## Lista de materiales

# 

# &nbsp;- 1x STM32L053R8 C04

# &nbsp;- 1x STM32L053R8 USB Power/Programming cable

# &nbsp;- 1x 4 digit 7 segment display(common cathode)

# &nbsp;- 8x 330Ω Resistor

# &nbsp;- 4x 10kΩ Resistor

# &nbsp;- 1x LED

# &nbsp;- 1x Pushbutton

# &nbsp;- 2x Breadboard

# &nbsp;- 4x Transistor NPN 2N2222

# &nbsp;- Jumper Wires

# &nbsp;- Breadboard Wire

# 

# ---

# 

# \## Pin Map

# |Signal|MCU Port/PIN|Mapping|Dir.

# |------|------------|-------|--|

# |SEG\_a |PB0|segment a|OUTPUT| |

# |SEG\_b|PB1|segment b|OUTPUT|

# |SEG\_c|PB2|segment c|OUTPUT|

# |SEG\_d|PB3|segment d|OUTPUT|

# |SEG\_e|PB4|segment e|OUTPUT|

# |SEG\_f|PB5|segment f|OUTPUT|

# |SEG\_g|PB6|segment g|OUTPUT|

# |SEG\_DP|PB7|Decimal Point|OUTPUT|

# |D3|PC5|Enable Hours Tens|OUTPUT|

# |D2|PC6|Enable Hours Units|OUTPUT|

# |D1|PC8|Enable Minutes Tens|OUTPUT|

# |D0|PC9|Enable Minutes Units|OUTPUT|

# |ALARM\_LED|PA5|Alarm LED Indicator|OUTPUT|

# |ACK\_BTN|PA6|Alarm Acknowledge Button|INPUT|

# |MODE\_BNT|PC13|12h/24h Mode Toggle Button|INPUT|

# 

# ---

# 

# \## Hardware Pinout

# 

# &nbsp;- STM32L053R8 Pinout

# !\[STM32L053R8 Pinout](./Fotos%20Serie%204/STM32L053R8\_Pinout.png)

# &nbsp;

# &nbsp;- Display Module Pinout

# !\[Display Pinout](./Fotos%20Serie%204/DisplayPinout.jpg)

# 

# ---

# 

# \## Video

# 

# &nbsp;- \[Video de Serie 4](https://youtu.be/BHaK8zbrU10)

# 



