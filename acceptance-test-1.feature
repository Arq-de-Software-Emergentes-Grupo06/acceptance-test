Feature: Visualización de la sección Hero y Botón Call-to-Action

  Como usuario interesado en la página, quiero ver un encabezado visual atractivo y un botón claro para tomar acción,
  para entender rápidamente el valor de la oferta y tomar una decisión.

  Scenario: Visualización correcta de la sección Hero y botón Call-to-Action
    Given que un visitante busca "Ayni" por primera vez en su buscador
    When accede a la landing page
    Then se muestra una imagen o video llamativo en la parte superior (sección hero)
    And el mensaje de valor claro es visible
    And un botón de call-to-action que invita a acceder a la aplicación web o móvil es visible
    And el visitante puede hacer clic en el botón y ser dirigido a la aplicación correspondiente

  Scenario: Redirección correcta a la aplicación
    Given que un visitante está en la landing page y ha decidido usar la aplicación
    When presiona el botón call-to-action
    Then el visitante es redirigido correctamente a la aplicación web o móvil

  Scenario: Error en la carga de la sección Hero
    Given que un visitante ingresa a la landing page
    When la sección hero no carga correctamente debido a un fallo técnico
    Then el visitante ve un mensaje de error indicando que hubo un problema al cargar la sección hero
  Or ve un área vacía en lugar del contenido esperado
    And el visitante puede sentirse confundido o desconfiado
