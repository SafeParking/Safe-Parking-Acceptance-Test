Feature: Registrar en la app ingresando una foto en tiempo real o una seleccionada en la galería

    Como usuario que busca un estacionamiento libre,
    quiero ingresar una foto en tiempo real o una que escoja de mi propia galería
    para evitar futuros problemas de identificación.


Scenario: Registro con foto en tiempo real 
Dado que el usuario busca registrarse en la app agregando una foto para completar su identificación
Y se encuentre en <perfil>
Cuando seleccione la <opcion1> 
y se tome la <foto_usuario>
Entonces la app guardará la <foto_usuario> para terminar el registro de manera satisfactoria.
Y mostrará el mensaje <mensaje_foto_subida>

Examples: Datos de entrada
    | opcion1                        | 
    | Tomar foto en tiempo real      | 

Examples: Datos de salida
    | mensaje_foto_subida            | 
    | "Foto subida correctamente"    |



Escenario 02 : Registro con foto seleccionada de la galería
Dado que el usuario busca registrarse en la app agregando una foto para completar su identificación
Cuando escoja una foto proveniente de su galería

Scenario:  Registro con foto seleccionada de la galería
Dado que el usuario busca registrarse en la app agregando una foto para completar su identificación
Y se encuentre en <perfil>
Cuando seleccione la <opcion2> 
E ingrese la <foto_usuario>
Entonces la app guardará la <foto_usuario> para terminar el registro de manera satisfactoria.
Y mostrará el mensaje <mensaje_foto_subida>
Examples: Datos de entrada
    | opcion2                        |
    | Tomar foto en tiempo real      | 

Examples: Datos de salida
    | mensaje_foto_subida           | 
    | "Foto subida correctamente"   |


