# Serie 4 - Microcontroladores MMIO

En esta serie se hizo un **reloj** utilizando cuatro **displays de siete segmentos** en **STM32CubeIDE**. El reloj tiene la **opción** de **formato de 12 y 24 horas (seleccionable mediante un botón)** y una **alarma** que solo se desarma al presionar otro **botón**.

## Contenido
- [`stm32CubeIDE Code`](./stm32CubeIDE%20Code/S4_Maximiliano_Gonzalez.c)

## Descripción
El reloj se realizó utilizando la técnica de **multiplexing** en un módulo de cuatro displays de siete segmentos (**cátodo común**). Cada display tiene un pin al cual llega su señal de enable mediante un **transistor NPN** que permite encender y apagar el display.

Para poder hacer pruebas, el reloj tiene una opción para acelerar el tiempo mediante la variable **`FAKE_SEC_MS`** (el paso de tiempo normal sería 1000 ms). Por la limitación de cuatro displays, de derecha a izquierda se muestran los **decimales de las horas**, las **unidades de horas**, los **decimales de los minutos** y las **unidades de los minutos**.

## Lista de materiales
- 1× STM32L053R8 C04  
- 1× Cable USB para alimentación/programación  
- 1× Módulo 4 dígitos 7 segmentos (cátodo común)  
- 8× Resistencias 330 Ω  
- 4× Resistencias 10 kΩ  
- 1× LED  
- 1× Pulsador  
- 2× Protoboard  
- 4× Transistores NPN 2N2222  
- Jumpers y cable para protoboard

## Pin Map

| Signal     | MCU Port/PIN | Mapping                | Dir.   |
|-----------|---------------|------------------------|--------|
| SEG_a     | PB0           | Segment a              | OUTPUT |
| SEG_b     | PB1           | Segment b              | OUTPUT |
| SEG_c     | PB2           | Segment c              | OUTPUT |
| SEG_d     | PB3           | Segment d              | OUTPUT |
| SEG_e     | PB4           | Segment e              | OUTPUT |
| SEG_f     | PB5           | Segment f              | OUTPUT |
| SEG_g     | PB6           | Segment g              | OUTPUT |
| SEG_DP    | PB7           | Decimal Point          | OUTPUT |
| D3        | PC5           | Enable Hours Tens      | OUTPUT |
| D2        | PC6           | Enable Hours Units     | OUTPUT |
| D1        | PC8           | Enable Minutes Tens    | OUTPUT |
| D0        | PC9           | Enable Minutes Units   | OUTPUT |
| ALARM_LED | PA5           | Alarm LED Indicator    | OUTPUT |
| ACK_BTN   | PA6           | Alarm Acknowledge BTN  | INPUT  |
| MODE_BTN  | PC13          | 12h/24h Mode Toggle    | INPUT  |

## Hardware Pinout

- STM32L053R8 MMIO Pinout 
    - ![STM32L053R8 Pinout](./Fotos%20Serie%204/STM32L053R8_Pinout.png)

- 4 Digit 7 Segment Display Pinout 
    - ![Display Pinout](./Fotos%20Serie%204/DisplayPinout.jpg)

## Video
- [Video Serie 4](https://youtu.be/BHaK8zbrU10)



