**** settings ***
Documentation   Primo test di prova
Library         SeleniumLibrary


**** variables ***


*** Test Case ***

Login test
  #######
  # **Given** that a user go to the site and fully compile the login form with
  # her/his username and password
  #######

  Open Browser   https://www.saucedemo.com/  chrome
  # link to doc https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#Open%20Browser
  Input Text     name:user-name  standard_user
  # link to doc https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#Locating%20elements
  Input Text     xpath://input[@id='user-name']  standard_user
  Input Text     name:password   secret_sauce

  #######
  # **When** the user press login button
  #######
  Click Button   id:login-button

  #######
  # **Then** the user is logged in and he/she land on the Products Page
  #######
  # check dell'url
  Location Should Be  https://www.saucedemo.com/inventory.html
  # Page should contain the word Products
  page should contain  Products
  # Page should contain the element that contains the produces
  page should contain Element  id:inventory_container

*** keyword ***
