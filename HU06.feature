Feature: HU06: Como usuario que busca un estacionamiento libre,quiero  ser capaz de poder visualizar a través de un mapa la ruta disponible para poder ver cuán cercano está a mi disposición
Scenario: E01: Usuario que busca un estacionamiento libre visualiza la  ruta de viaje

    Given que el usuario encuentre un estacionamiento disponible 
    When presione el botón “ver en el mapa”
    Then el aplicativo a través de un mapa, tomando el lugar seleccionado, va a trazar una ruta de viaje de fácil acceso

    Examples: 
        | Dueño de camioneta | Búsqueda de estacionamiento | Boton " ver en el mapa" | Resultado |
        | Jose Carvallo      | Eliga un estacionamiento    | clic()                  | Visualizará ruta hacía el estacionamiento seleccionado |

Scenario: E02: Usuario que busca un estacionamiento libre no visualiza la  ruta de viaje
   
    Given que el usuario encuentre un estacionamiento disponible
    When presione el botón “ver en el mapa"
    Then el aplicativo va enviar un mensaje de error indicando que “el lugar seleccionado no cuenta con una ruta segura y accesible”

    Examples: 
       | Dueño de camioneta | Búsqueda de estacionamiento cercanos | Boton " ver en el mapa" | Resultado |
       | Jose Carvallo      | Eliga un estacionamiento             | clic()                  | Visualizará mensaje de error indicando que el estacionamiento no cuenta con ruta segura |
 

    
