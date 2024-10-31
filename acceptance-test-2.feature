Feature: Landing Page responsive para acceso desde cualquier dispositivo

  Como visitante, deseo visitar la landing page desde cualquier dispositivo,
  para poder acceder a la información y funcionalidades de la aplicación web o móvil sin limitaciones.

  Scenario: Acceso desde un navegador en cualquier dispositivo
    Given que un visitante necesita una aplicación para mejorar su servicio de monitoreo de productos peligrosos
    When busca "Monitorear productos peligrosos" en el navegador
    Then accede a la landing page y la visualiza correctamente en su dispositivo
    And puede ver de manera clara las funcionalidades que ofrece la aplicación web o móvil

  Scenario: Visualización de la sección de beneficios y funcionalidades en la landing page
    Given que un visitante interesado en características de seguridad de transporte de productos peligrosos está navegando en la landing page
    When accede a la sección de beneficios y funcionalidades
    Then puede visualizar de forma clara y detallada la funcionalidad de monitoreo y seguridad que ofrece la aplicación
    And decide usar la aplicación web o móvil debido a las características específicas que busca

  Scenario: Visualización adecuada de la landing page en dispositivos móviles y de escritorio
    Given que un visitante accede a la landing page desde un dispositivo móvil o de escritorio
    Then la página se adapta correctamente al tamaño de su pantalla
    And todas las secciones, incluyendo beneficios y funcionalidades, son legibles y accesibles sin problemas
    And el botón call-to-action está visible y accesible en cualquier dispositivo
