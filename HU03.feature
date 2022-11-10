Feature: Plataforma de pago intuitiva

    Como usuario que busca un estacionamiento libre,
    quiero una interfaz intuitiva del sistema de transacciones
    para realizar el pago del servicio correctamente.



Scenario: Usuario que busca un estacionamiento libre logra realizar satisfactoriamente el pago de un servicio.
Dado el usuario que busca un estacionamiento libre se encuentra en la sección de <Transacciones y pagos>
Cuando el usuario que busca un estacionamiento libre encuentra una plataforma intuitiva lo que le permite realizar 
el pago de manera exitosa
Entonces la aplicación despliega una ventana con el mensaje <mensaje_confirmacion> que indica la confirmación 
exitosa del pago realizado.

Examples: Datos de salida
    | mensaje_confirmacion                          | 
    | "confirmación exitosa del pago realizado"     |

Scenario: Usuario que busca un estacionamiento libre no logra realizar satisfactoriamente el pago de un servicio.
Dado el usuario que busca un estacionamiento libre se encuentra en la sección de <Transacciones y pagos>
Cuando el usuario que busca un estacionamiento libre encuentra una plataforma no intuitiva lo que le impide ingresar 
el tipo de pago de su preferencia y credenciales de pago para realizar el pago de manera exitosa
Entonces la aplicación despliega una ventana mensaje <mensaje_confirmacion> que indica el error del pago realizado.
Examples: Datos de salida
    | mensaje_confirmacion                          | 
    | "Error el pago por realizar"     |
