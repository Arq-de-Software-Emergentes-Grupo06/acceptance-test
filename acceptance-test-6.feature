Feature: Monitoreo del estado del vehículo

  Como transportista, quiero realizar un monitoreo completo del vehículo antes de iniciar un viaje,
  para asegurarme de que está en condiciones óptimas.

  Scenario: Realizar monitoreo del vehículo
    Given que el transportista necesita asegurar el estado del vehículo
    When inicia la función de monitoreo
    Then el sistema presenta un reporte detallado con el estado del vehículo
    And el transportista puede verificar si el vehículo está en condiciones óptimas para iniciar el viaje

  Scenario: Error en el monitoreo del vehículo
    Given que el sistema presenta un error durante la verificación del estado del vehículo
    When el transportista intenta iniciar la función de monitoreo
    Then el sistema muestra un mensaje de error indicando que no se pudo realizar el monitoreo
    And el sistema sugiere intentar nuevamente o contactar al soporte técnico para obtener ayuda
