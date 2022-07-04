Feature: TMSandbox API

  Background:

    Given url baseUrl
    And path 'Categories/6327/Details.json'
    And param catalogue = 'false'
    When method GET
    Then status 200
    * def rsp = response

  @tc1
  Scenario: Validate Name Equal to Carbon Credits
    * def exp = 'Carbon credits'
    * print 'The response is:\n' + karate.pretty(rsp)
      #===== Validate Name should be equal to string Carbon credits ======#
    * match rsp.Name == '#string'
    * assert rsp.Name == 'Carbon credits'
    * print 'The Name is equal to expected value ' + exp

  @tc2
  Scenario: Validate CanRelist Equal to boolean true
    * def exp = true
    * print 'The response is:\n' + karate.pretty(rsp)
      #===== Validate CanRelist should be equal to boolean true ======#
    * assert rsp.CanRelist == true
    * match rsp.CanRelist == '#boolean'
    * print 'CanRelist is equal to boolean value ' + exp

  @tc3
  Scenario: Validate Promotions element with Name="Gallery" has a Description that contains the text "Good position in category"
    * def exp = 'Good position in category'
    * print 'The response is:\n' + karate.pretty(rsp)
    * print 'The Promotion element is:\n' + karate.pretty(rsp.Promotions)
      #===== Validate Promotions with Name = "Gallery" has description = "Good position in category" ======#
    * assert rsp.Promotions[1].Name == 'Gallery'
    * assert rsp.Promotions[1].Description == 'Good position in category'
    * print 'Promotion with Name = Gallery is equal to expected ' + exp