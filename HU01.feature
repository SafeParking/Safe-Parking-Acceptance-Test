Feature: Registrarse en la app mediante una cuenta de google.

    Como usuario que busca un estacionamiento libre, 
    quiero registrarme en la app mediante una cuenta 
    de google para acceder a la app de manera rápida.

Scenario: Registro exitoso mediante una cuenta de google
Dado que el usuario busca registrarse con su cuenta personal de google
Y se encuentre en <home>
Cuando cuando seleccione la opcion <icono_Google>
Entonces se desplegara una ventana en la cual tendra que autenticar su cuenta de Google
por medio de su correo y contraseña en <datos1> y <datos2> respectivamente
Y el mensaje <mensaje_autenticacion>
Y accedera a la aplicacion

Examples: Datos de entrada
    | datos1          | datos2                  |
    | Correo gmail    | Contraseña del correo   | 

Examples: Datos de salida
    | mensaje_autenticacion    | 
    | "Autenticacion exitosa"  |


Scenario:  Registro fallido debido a la falta de datos
Dado que el usuario busca registrarse con su cuenta personal de google
Y se encuentre en <home>
Cuando cuando seleccione la opcion <icono_Google>
Entonces se desplegara una ventana en la cual tendra que autenticar su cuenta de Google
por medio de su correo y contraseña en <datos1> y <datos2> respectivamente
Y el mensaje <mensaje_autenticacion>
Examples: Datos de entrada
    | datos1          | datos2                  |
    | Correo gmail    | Contraseña del correo   | 

Examples: Datos de salida
    | mensaje_autenticacion    | 
    | "Datos insuficientes"  |



