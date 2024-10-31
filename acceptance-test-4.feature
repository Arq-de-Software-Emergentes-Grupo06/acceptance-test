Feature: Visualización de transportistas calificados para transporte de productos peligrosos

  Como empresa de transporte de productos peligrosos, quiero ver una lista de transportistas disponibles
  que cumplan con los requisitos para transportar ciertos tipos de productos peligrosos,
  para seleccionar un transportista calificado que satisfaga nuestras necesidades.

  Scenario: Visualización de transportistas calificados
    Given que la empresa ha publicado una solicitud de transporte de productos peligrosos
    When existen transportistas calificados disponibles
    Then el sistema muestra una lista de transportistas con detalles como sus calificaciones, precio, y disponibilidad
    And la empresa puede visualizar estos detalles para tomar una decisión informada sobre el transportista adecuado

  Scenario: Error al visualizar transportistas disponibles
    Given que el sistema falla al cargar la lista de transportistas disponibles
    When la empresa intenta visualizar transportistas calificados
    Then el sistema muestra un mensaje de error indicando que no se pudo cargar la lista de transportistas
    And el sistema sugiere reintentar la acción o contactar al soporte técnico para obtener ayuda
