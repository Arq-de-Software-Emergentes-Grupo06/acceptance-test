Feature: Actualización de Estado del Vehículo desde Edge API

  Como desarrollador,
  quiero implementar la funcionalidad para que los dispositivos IoT en el vehículo actualicen el estado del transporte en tiempo real a través de la Edge API,
  para que la empresa siempre tenga información precisa sobre el progreso del viaje.

  Background:
    Given un endpoint configurado en la Edge API: PUT /edge/vehicle-status/{vehicleId}
    And este endpoint permite a los dispositivos IoT actualizar el estado del vehículo (en camino, retraso, entregado, etc.)

  Scenario: Actualización de estado exitosa
    Given que el vehículo cambia su estado (por ejemplo, llega al destino)
    When el dispositivo IoT envía una actualización de estado al endpoint /edge/vehicle-status/{vehicleId}
    Then la Edge API actualiza la información en el sistema central
    And devuelve un response con status 200 para confirmar la actualización exitosa

  Scenario: Error en la actualización del estado del vehículo
    Given que el sistema IoT falla en actualizar el estado del vehículo
    When el dispositivo IoT intenta enviar una actualización al endpoint /edge/vehicle-status/{vehicleId}
    And ocurre un error de transmisión o de datos
    Then el sistema devuelve un response con status 500
    And muestra un mensaje de error adecuado indicando que la actualización no pudo completarse
