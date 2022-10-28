Feature: HU01: Como usuario que busca un estacionamiento libre, quiero recibir sugerencias de estacionamientos para poder tomar una mejor decisión
Scenario: E01: Usuario que visualiza una recomendación de estacionamiento por su bajo costo
   
    Given que el usuario necesite un estacionamiento a bajo costo
    When realice la búsqueda de estacionamientos recibirá recomendaciones
    Then  observará estacionamientos de bajo costo

    Examples: 
        | Chofer de taxi | Búsqueda de estacionamiento de bajo costo | Boton buscar | Resultado |
        | Carlos Venegas | Navegación en mapa                        | clic()       | Visualizará recomendaciones de estacionamiento a bajo costo |

Scenario: E02: Usuario que visualiza recomendaciones de estacionamiento por su cercanía.
   
    Given que el usuario necesite un estacionamiento cerca
    When realice la búsqueda de estacionamientos recibirá una recomendación
    Then visualizará el estacionamiento más cercano

    Examples: 
       | Chofer de taxi | Búsqueda de estacionamiento cercanos | Boton buscar | Resultado |
       | Carlos Venegas | Navegación en mapa                   | clic()       | Visualizará recomendaciones de estacionamiento cercanos |


    
