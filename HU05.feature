Feature: Búsqueda eficiente de estacionamientos cercanos. 

    Como usuario que busca un estacionamiento libre,
    quiero ser capaz de poder  buscar los lugares más cercanos a mi disposición
    para  facilitar un rápido estacionamiento de acuerdo al lugar donde me encuentro.


Scenario: ingreso hacia la búsqueda de estacionamientos 
Dado que el usuario se encuentre en la aplicación
Cuando presione el <boton_est>
Entonces el aplicativo va a redireccionar al usuario hacia un apartado <Seccion_referencia> donde pueda colocar el lugar de referencia.

Examples: Datos de entrada
    | boton_est                          | 
    | “búsqueda de estacionamientos disponibles”    |

Scenario: búsqueda satisfactoria de los lugares más cercanos  
Dado que el usuario se encuentre en la aplicación  
Y se dirija a la sección <Busqueda_Est>
Cuando coloque el lugar de referencia y presione en el botón de <buscar>
Entonces el aplicativo va a mostrar el <Top_lugares>

Examples: Datos de Salida
    | Top_lugares                          | 
    | lista de lugares cercanos y relacionados hacia el lugar de referencia    |


Scenario: búsqueda invalida de los lugares más cercanos  
Dado  que el usuario se encuentre en la aplicación 
Y se dirija a la sección <Busqueda_Est>
Cuando coloque el lugar de referencia y presione en el botón de <buscar>
Entonces la aplicación despliega un mensaje <mensaje_estdispo> que indicara que no hay estacionamientos disponibles

Examples: Datos de Salida
    | mensaje_estdispo                          | 
    | “No hay estacionamientos disponibles, lo sentimos”    |

