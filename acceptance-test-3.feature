Feature: Visualización de características principales y diseño responsive de la landing page

  Como visitante, deseo ver las principales características de la aplicación web o móvil,
  para decidir si usar el producto en mi trabajo.

  Scenario: Visualización de la landing page desde un dispositivo móvil
    Given que un visitante accede a la landing page desde su celular
    When visita la landing page desde el navegador de su dispositivo móvil
    Then la landing page se muestra correctamente en el navegador del celular
    And las principales características de la aplicación son claramente visibles y accesibles en el diseño responsive

  Scenario: Visualización adecuada en dispositivos móviles con diferentes resoluciones
    Given que un visitante recomienda la landing page mediante un dispositivo móvil
    When otro visitante recomendado accede a la landing page desde un dispositivo móvil con diferente resolución
    Then la landing page se muestra completamente visible y ordenada en el nuevo dispositivo
    And las principales características de la aplicación son visibles y claras en todos los dispositivos debido al diseño responsive

  Scenario: Acceso a las características principales para la toma de decisiones
    Given que un visitante está interesado en conocer las características principales de la aplicación web o móvil
    When navega por la landing page en la sección de características
    Then puede visualizar la funcionalidad clave de monitoreo y seguridad
    And entiende los beneficios de la aplicación para tomar una decisión informada sobre su uso en el trabajo
