Feature: Monitoreo en Tiempo Real a través de Edge API

  Como desarrollador,
  quiero implementar la funcionalidad de monitoreo en tiempo real utilizando la Edge API,
  para que los dispositivos IoT puedan enviar datos de ubicación y estado directamente desde el transporte.

  Background:
    Given un endpoint configurado en la Edge API: POST /edge/vehicle-monitoring
    And este endpoint recibe datos en tiempo real desde dispositivos IoT instalados en los vehículos

  Scenario: Recepción de datos en tiempo real
    Given que el vehículo está en movimiento
    When el dispositivo IoT envía datos de ubicación y estado al endpoint /edge/vehicle-monitoring
    Then la Edge API procesa y almacena los datos en la base de datos central
    And devuelve un response con status 200 para confirmar la recepción exitosa

  Scenario: Error en la recepción de datos
    Given que el sistema IoT falla en enviar los datos al Edge API
    When el dispositivo IoT intenta enviar datos al endpoint /edge/vehicle-monitoring
    And ocurre un error de conexión o datos corruptos
    Then el sistema devuelve un response con status 500
    And muestra un mensaje de error adecuado indicando que no se pudo procesar la información
