Feature: Seguimiento en Tiempo Real de los Transportes Activos

  Como empresa de transporte de productos peligrosos,
  quiero realizar un seguimiento en tiempo real de todos los transportes activos,
  para garantizar la seguridad y la entrega puntual de los productos.

  Scenario: Seguimiento del Transporte en Tiempo Real
    Given que hay un transporte activo en curso
    When la empresa accede a la sección de seguimiento de transportes
    Then el sistema muestra la ubicación actual y el estado del transporte en tiempo real en un mapa
    And la empresa puede monitorear la ruta y el progreso del transporte para garantizar la entrega segura

  Scenario: Error en el seguimiento en tiempo real
    Given que el sistema falla en actualizar la ubicación del transporte
    When la empresa intenta realizar el seguimiento en tiempo real
    Then el sistema muestra un mensaje indicando que no se puede obtener la ubicación del transporte
    And el sistema permite reintentar la consulta o contactar directamente al transportista para obtener información
