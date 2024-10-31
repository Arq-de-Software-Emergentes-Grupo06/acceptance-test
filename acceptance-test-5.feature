Feature: Verificación de permisos y certificaciones de transportistas

  Como empresa de transporte de productos peligrosos, quiero verificar los permisos y certificaciones de los transportistas antes de contratarlos,
  para asegurarme de que cumplen con los requisitos legales y de seguridad.

  Scenario: Verificación de permisos y certificaciones de un transportista
    Given que la empresa busca contratar un transportista para productos peligrosos
    When selecciona un transportista de la lista de disponibles
    Then el sistema muestra un detalle de los permisos, certificaciones y calificaciones del transportista
    And la empresa puede revisar esta información para verificar su cumplimiento antes de realizar la contratación

  Scenario: Error al verificar permisos y certificaciones
    Given que el sistema no puede cargar los detalles del transportista
    When la empresa intenta verificar permisos y certificaciones del transportista seleccionado
    Then el sistema muestra un mensaje de error indicando que no se pudo cargar la información
    And el sistema sugiere intentar más tarde o contactar al soporte técnico para obtener ayuda
