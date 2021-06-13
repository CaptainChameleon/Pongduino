# Pongduino
Creando Interfaces de Usuario - Práctica 12

## Introducción
La naturaleza de Arduino como microcontrolador abre posibilidades para la creación de interfaces originales y nuevas formas de interacción. El objetivo de la práctica es ilustrar esta capacidad estableciendo un canal de comunicación entre Arduino y Processing, utilizando un sensor de proximidad controlado por el primero, para controlar el movimiento del juego Pong.

## Desarrollo
Utilizando el proyecto [Pongcessing](https://github.com/CaptainChameleon/Pongcessing) como base, simplemente abrimos un canal de comunicación mediante un puerto serie. A través del puerto, Arduino enviará a Processing los valores leídos por el sensor de distancia.

Una vez establecido el canal de comunicación y de leer los valores del sensor, es necesario estudiar qué tipo de valores emite. Sin ningún tipo de obstáculo y en una habitación con techo, los valores parece que oscilan entre 50 y 70, mientras que al colocar la mano frente al sensor los valores oscilan entre 300 y 650 en función de la distancia. Tan solo es necesario vincular el movimiento de la paleta del jugador 1 a diferentes umbrales de este rango. 

En principio se establece que el movimiento hacia arriba se producirá siempre que el sensor emita un valor entre 100, para garantizar que cuando no se interactúe con el sensor la paleta se queda inmóvil, y 490. Por el contrario, siempre que el valor supere 500, la paleta se desplazará hacia abajo.

## Resultado
![GIF demostrando el uso del sensor para controlar la paleta del jugador 1](https://github.com/CaptainChameleon/Pongduino/blob/907d304c3aa1dc6d12208c390aea0439412b580b/result.gif)
