Feature: Publicación de Solicitudes de Transporte de Productos Peligrosos

  Como empresa de transporte de productos peligrosos,
  quiero publicar solicitudes de transporte detallando el tipo de producto, cantidad, origen, destino, y requisitos especiales,
  para asegurar una gestión eficiente y segura del transporte.

  Scenario: Publicación de Solicitud de Transporte
    Given que la empresa accede a la sección de solicitud de transporte
    When completa el formulario de solicitud con toda la información requerida
    Then la solicitud se publica exitosamente
    And los transportistas calificados reciben notificaciones de la nueva solicitud

  Scenario: Error al publicar solicitud de transporte
    Given que el sistema falla en procesar la solicitud de transporte
    When la empresa intenta publicar la solicitud
    Then el sistema muestra un mensaje de error indicando que no se pudo publicar la solicitud
    And el sistema sugiere reintentar o contactar al soporte técnico para obtener ayuda
