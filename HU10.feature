Feature: HU10: Como usuario arrendador, quiero un sistema de gestión y administración del tiempo de uso de mis clientes para tener un control eficiente
Scenario: E01: Usuario arrendador visualiza correctamente el tiempo de permanencia del cliente en su estacionamiento
   
    Given el usuario arrendador se encuentra en la sección de “Gestiona tus clientes” 
    When el usuario arrendador hace clic en el servicio de alquiler activo en ese momento
    Then la aplicación despliega una ventana con toda la información correspondiente a la gestión del cliente, como información personal, tarifa adquirida y tiempo de uso

    Examples: 
        | Arrendador de estacionamiento | Navegación en gestión clientes        | Boton servicio activado  | Resultado |
        | Martin Barreras               | Desee poner activo su estacionamiento | clic()                   | Visualizará información para su correcta gestión de servicio |

Scenario: E02: Usuario arrendador no logra visualizar correctamente el tiempo de permanencia del cliente en su estacionamiento
   
    Given el usuario arrendador se encuentra en la sección de “Gestiona tus clientes”
    When el usuario arrendador hace clic en el servicio de alquiler activo en ese momento y no encuentra la información del tiempo de uso habilitada 
    Then la aplicación despliega el mensaje “Lo sentimos, intente de nuevo más tarde

    Examples: 
        | Arrendador de estacionamiento | Navegación en gestión clientes                                    | Boton servicio activado  | Resultado |
        | Martin Barreras               | No encuentra información del tiempo de alquiler de otros usuarios | clic()                   | Visualizará mensaje "Intentelo de nuevo más tarde" |