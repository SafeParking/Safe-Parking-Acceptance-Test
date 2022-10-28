Feature: HU08: Como usuario arrendador, quiero una variedad de posibilidades de pago para realizar el abono de la publicación de mi servicio de forma correcta
Scenario: E01: Usuario arrendador logra encontrar satisfactoriamente el medio de pago de su preferencia para el abono de la publicación de su servicio

   
    Given el usuario arrendador se encuentra en la sección de selección del medio de pago en el apartado de “Pagos y transacciones”
    When el usuario arrendador se encuentra en la sección de “Pagos y transacciones” y selecciona satisfactoriamente el medio de pago de su preferencia
    Then la aplicación despliega un message box indicando la confirmación del medio de pago seleccionado

    Examples: 
        | Dueño de estacionamiento  | Búsqueda de medios de pago | Boton escoger medio de pago | Resultado |
        | Marc Mora                 | Elige un medio de pago     | clic()                      | Visualizar mensaje de confirmación de pago |

Scenario: E02: Usuario arrendador no logra encontrar satisfactoriamente el medio de pago de su preferencia para el abono de la publicación de su servicio
   
    Given el usuario arrendador se encuentra en la sección de selección del medio de pago en el apartado de “Pagos y transacciones”
    When el usuario arrendador se encuentra en la sección de “Pagos y transacciones” y no encuentra el medio de pago de su preferencia
    Then la aplicación despliega un messagebox indicando que faltan completar los datos de pago

    Examples: 
        | Dueño de estacionamiento  | Búsqueda de medios de pago | Boton escoger medio de pago | Resultado |
        | Marc Mora                 | No elgie un medio de pago  | clic()                      | Visualizar mensaje de cfalta completar datos de pago |