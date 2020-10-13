Feature: Testing search

  Scenario: Search for 'ibsen'
	  Given url 'https://api.dev.nva.aws.unit.no'
    And path 'search/resources'
    And param query = 'ibsen'
    # And request = { query: 'ibsen' }
    # And request = read('query.json')
    When method get
    Then status 200
    And match response == '#array'
    And match response[0].type == 'BookMonograph'
    And match response[0].date == '#present'
    And match response[0].id == '#uuid'

