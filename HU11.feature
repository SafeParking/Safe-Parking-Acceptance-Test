Feature: HU11: Como usuario arrendador, quiero recibir sugerencias para la publicación de mi estacionamiento y poder generar mayores ganancias
Scenario: E01: Usuario arrendador que visualiza una recomendación para publicar su estacionamiento por la alta demanda
   
    Given el usuario no esté haciendo uso de la aplicación, ni alquilado su estacionamiento
    When reciba una notificación con la recomendación de publicar su estacionamiento por la alta demanda
    Then podrá publicar su estacionamiento para generar mayores ganancias

    Examples: 
        | Arrendador de estacionamiento | Recibe notificación  | 
        | Martin Barreras               | Mensaje "Alta demana de estacionamiento" | 

Scenario: E02: Usuario arrendador que visualiza recomendaciones de los mejores días para publicar su estacionamiento
   
    Given el usuario arrendador necesite saber que días publicar su estacionamiento
    When reciba recomendaciones de los días con más clientes
    Then sabrá que día publicar su estacionamiento

    Examples: 
        | Arrendador de estacionamiento | Recibe recomendaciones  | 
        | Martin Barreras               | Mensaje "Fines de semana con mayor demanda de estacionamiento" | 