Feature: Visualizar estacionamientos cercanos disponibles y precios en un mapa

    Como usuario que busca un estacionamiento libre,
    quiero visualizar los estacionamientos cerca del lugar donde me encuentro 
    para revisar sus precios y dirección exacta. 

Scenario: Visualización de estacionamientos cercanos
Dado que el usuario busca encontrar un estacionamiento cerca del lugar donde se encuentra
Cuando vea un estacionamiento disponible
Y seleccione en <Icono_estacionamiento>
Entonces podrá visualizar el <detalles_est> el cual brinda detalle de el precio y el lugar exacto.
Examples: Datos de salida
    | detalles_est                          | 
    | precio y el lugar exacto del estacionamiento     |


Scenario: Visualización de estacionamientos a cientos de kilómetros
Dado que el usuario busca encontrar un estacionamiento cerca del lugar donde se encuentra
Cuando vea que no hay estacionamientos cerca
Entonces la aplicación despliega un mensaje <mensaje_estdispo> que indicara la falta de estacionamientos
Examples: Datos de salida
    | mensaje_estdispo                          | 
    | “Estacionamientos cercanos no disponibles”    |

