*** Settings ***
Resource          ../Keywords/Kontakt.robot
Resource          ../Config.robot
Resource          ../Common.robot

*** Test Cases ***
Test Case
    Otworz przegladarke na stronie    ${URL}    ${BROWSER}
    Przejdz na zakladke Kontakt
    Sprawdz czy jestes na zakladce Kontakt
    Wpisz dane w pole Imie i Nazwisko    Piotr Nowicki
