**** settings ***
Documentation   Primo test di prova

Library         SeleniumLibrary


**** variables ***


*** Test Case ***

Login test
  # https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#Open%20Browser
  Open Browser   https://www.saucedemo.com/  chrome
  # https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#Locating%20elements
  #Input Text     name:user-name  standard_user
  #Input Text     xpath://input[@id='user-name']  standard_user
  Input Text     xpath://input[@data-test='username']  standard_user
  Input Text     name:password   secret_sauce
  Click Button   id:login-button
  # Condizioni da controllare
  # check dell'url
  Location Should Be  https://www.saucedemo.com/inventory.html
  # la pagina deve contenere
  page should contain  Products
  # contere elemento specifico
  page should contain Element  id:inventory_container

*** keyword ***
