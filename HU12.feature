Feature: HU12: Como usuario arrendador, quiero poder gestionar mi horario de disponibilidad de mí estacionamiento para tener un control más eficiente de 
mis días hábiles de disponibilidad
Scenario: E01: Usuario arrendador ingresa en la sección de gestión de horarios
   
    Given el usuario arrendador se encuentra en la sección de “Gestiona tus clientes”
    When el usuario entra en la sección de “gestión de horarios disponibles para mis clientes”
    Then el aplicativo va a mostrar una sección donde el usuario pueda colocar su horario de preferencia a su disposición para el alquiler a sus clientes

    Examples: 
        | Dueño de estacionamiento | Boton gestión de horarios disponibles | Resultado |
        | Pablo Marmol             | clic()       | Visualizar seccion de horarios de preferencia para el alquiler del estacionamiento |

Scenario: E02: Usuario arrendador seleccione su horario disponible
   
    Given que el usuario arrendador se encuentra en la sección de  “gestión de horarios disponibles para mis clientes”
    When el usuario arrendador seleccione, elija el formato de su horario y también  la disponibilidad y le dé clic en el botón “generar”
    Then el aplicativo va a mostrar en el perfil del arrendador y el lugar el horario de disponibilidad para sus clientes

    Examples: 
        | Dueño de estacionamiento | Navegación en "gestión de horaios disponibles" | Boton generar | Resultado 
        | Pablo Marmol             | Elige el forma de horario y disponibilidad                 | clic()        | Aplicativo mostrará "Pablo marmol" y el horario elejido. 
