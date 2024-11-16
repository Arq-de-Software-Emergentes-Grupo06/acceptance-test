Feature: Visualización de Transportistas Disponibles

  Como empresa de transporte de productos peligrosos,
  quiero ver una lista de transportistas disponibles que cumplan con los requisitos para transportar ciertos tipos de productos peligrosos,
  para seleccionar la mejor opción para mis necesidades.

  Scenario: Visualización de Transportistas Calificados
    Given que la empresa ha publicado una solicitud de transporte
    When hay transportistas calificados disponibles
    Then el sistema muestra una lista de transportistas con sus detalles de calificación, precio y disponibilidad
    And la empresa puede evaluar y seleccionar al transportista más adecuado para la solicitud

  Scenario: Error al visualizar transportistas disponibles
    Given que el sistema falla en cargar la lista de transportistas disponibles
    When la empresa intenta visualizar transportistas calificados
    Then el sistema muestra un mensaje de error indicando que no se pudo cargar la lista
    And el sistema sugiere reintentar o contactar al soporte técnico para obtener ayuda
