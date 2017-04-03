*** Settings ***
Library           Selenium2Library

*** Keywords ***
Zakladka Kontakt
    ${pageObject}    Get Webelement    //li/a[@href='/pl/kontakt']
    [Return]    ${pageObject}

Napis Kontakt
    ${pageObject}    Get Webelement    //div[@id='content']/div[@class='box']/div/h2
    [Return]    ${pageObject}

Pole Imie i Nazwisko
    ${pageObject}    Get Webelement    id=name
    [Return]    ${pageObject}
