Feature: Administracion de Checklists
  Una lista de checklist es una forma de realizar un seguimiento de las subtareas dentro de una
  tarjeta (Card). Puede agregar varias listas de verificación a una sola tarjeta(Card).

  @acceptance @efrain
  Scenario: Crear un checklist en la aplicacion Trello
    Given que el nombre de Board es: Mi_Board5
    And   y el nombre de la List es: mi_lista5
    And   y el nombre de la Card es: mi_card5
    And   y el nombre del Checklist es: mi_checklist5
    When  se envia un POST al endpoint /checklists
    Then  El status code deberia ser 200

  @acceptnace @efrain
  Scenario: Agregar una checklist con un item checkeado
    Given el nombre de un card es : my_card
    And   el nombre del checklist es: otro_checklist
    And   el nombre del check item es: name_checkitem
    And   y determinar que check item este tiqueado: true
    When  se envia un POST a /checklists/id/checkItems
    Then  el status code el check item deberia  ser 200


  @functional @efrain
  Scenario Outline: Verificar que nos retorne un status code 400 cuando se envia un icChecklist invalido

    When se envia un GET con un id invalido: <idchecklists>
    Then el resultado de status code debe ser <statuscode>
    Examples:
     |      idchecklists       |      statuscode   |
     |5c739c1d57f74c8fdef7zcf2 |       400         |
     |null                     |       400         |
     |idcodigo12354a5adsf235dd |       400         |


  @acceptance @efrain
  Scenario Outline: Verificar que permita crear Check Item en un Checklist con valores aceptables
    Given que el nombre del check item es: <name_checkitem>
    And   y la posicion del check item en el checklist es: <pos>
    And   y determinar si el check item ya esta tiqueado cuando se crea <checked>
    When se envia un POST al checklist creado en el primer escenario
    Then el resultado de status code de un check item debe ser <status_code>
    Examples:
     |pos   |checked | status_code |name_checkitem     |
     |top   |true    | 200         |mi nombre de  checklist 891 |
     |bottom|false   | 200         |tarea1  |
     |top   |true    | 200         |a  |
     |bottom|true    | 200         |AANunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente esperaNunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente esperaNunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente esperaNunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente esperaNunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente esperaNunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente esperaNunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente esperaNunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente esperaNunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando|


  @functional @efrain
  Scenario Outline: Verificar que no permita crear un checkitem con un nombre mayor a 16383 caracteres
    Given que el nombre del check item es: <name_checkitem>
    And   y la posicion del check item en el checklist es: <pos>
    And   y determinar si el check item ya esta tiqueado cuando se crea <checked>
    When se envia un POST al checklist creado en el primer escenario
    Then el resultado de status code de un check item debe ser <status_code>
    Examples:
     |pos   |checked | status_code |name_checkitem     |
     |bottom|true    | 400         |Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente esperaNunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente esperaNunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente esperaNunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente esperaNunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente esperaNunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente esperaNunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente esperaNunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente esperaNunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente esperaNunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente esperaNunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente esperaNunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente esperaNunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente esperaNunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente esperaNunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente esperaNunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente esperaNunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente esperaNunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente esperaNunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente esperaNunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente esperaNunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente esperaNunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente esperaNunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente esperaNunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente esperaNunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente esperaNunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente esperaNunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente esperaNunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es crucial asegurar la calidad que el cliente espera, Nunca debes subestimar el plan de pruebas, Cuando se desarrolla un proyecto de software es cruc132456798000 |


