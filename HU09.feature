Feature: HU09: Como usuario arrendador, quiero poner a disposición del público mi estacionamiento dentro de la aplicación para poder generar ingresos extras
Scenario: E01: Usuario arrendador logra publicar con éxito su estacionamiento en la aplicación
   
    Given el usuario arrendador se encuentre en la app y desee publicar su estacionamiento
    When el usuario arrendador se dirija a la sección publicar estacionamiento
    Y complete el formulario de datos para la publicación
    Y haga clic en el botón publicar
    Then se le mostrará el mensaje “Estacionamiento Publicado”

    Examples: 
        | Arrendador de estacionamiento | Navegación en la sección publicar estacionamiento | Boton publicar estacionamiento | Resultado |
        | Max Bartra                    | Rellene formulario                                | clic()                         | Visualizará mensaje de "Estacionamiento Publicado" |

Scenario: E02: Usuario arrendador no logra publicar con éxito su estacionamiento en la aplicación
   
    Given el usuario arrendador se encuentre en la app y desee publicar su estacionamiento
    When el usuario arrendador se dirija a la sección publicar estacionamiento
    Y no complete el formulario de datos para la publicación o ponga datos erróneos
    Y haga clic en el botón publicar 
    Then se le mostrará el mensaje “Publicación errónea ”

    Examples: 
        | Arrendador de estacionamiento | Navegación en la sección publicar estacionamiento | Boton publicar estacionamiento | Resultado |
        | Max Bartra                    | Rellene formulario de forma erronea               | clic()                         | Visualizará mensaje de "Públicación erronea" |