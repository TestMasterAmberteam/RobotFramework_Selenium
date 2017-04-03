*** Settings ***
Library           Selenium2Library
Resource          ../Page_Objects/Kontakt.robot

*** Keywords ***
Przejdz na zakladke Kontakt
    ${zakladkaKontakt}    Zakladka Kontakt
    Click Element    ${zakladkaKontakt}

Sprawdz czy jestes na zakladce Kontakt
    ${napisKontakt}    Napis Kontakt
    Page Should Contain Element    ${napisKontakt}

Wpisz dane w pole Imie i Nazwisko
    [Arguments]    ${wartoscImieINazwisko}
    ${poleImieINazwisko}    Pole Imie i Nazwisko
    Input Text    ${poleImieINazwisko}    ${wartoscImieINazwisko}
