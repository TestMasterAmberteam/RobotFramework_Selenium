*** Settings ***
Library           Selenium2Library
Library           OperatingSystem
Library           String
Library           Collections
Library           random

*** Variables ***

*** Keywords ***
Otworz przegladarke na stronie
    [Arguments]    ${url}    ${BROWSER}
    Open Browser    ${url}    ${BROWSER}

Zamknij wszystkie przeglądarki
    Close All Browsers

Przetworz Dane z pliku
    [Arguments]    ${filename}
    ${FILE_CONTENT}=    Get File    ${filename}
    Log    File Content: ${FILE_CONTENT}
    @{LINES}=    Podziel plik na linie    ${FILE_CONTENT}
    Log    ${LINES}
    [Return]    @{LINES}

Podziel plik na linie
    [Arguments]    ${Data}
    @{splitLines}    Split To Lines    ${Data}
    [Return]    @{splitLines}

Wczytaj Dane konkretnej linii z pliku
    [Arguments]    ${filename}    ${lineNumber}
    @{testData}=    Przetworz Dane z pliku    ${filename}
    ${lineWithTestData}    Split String    @{testData}[${lineNumber}]    ;
    Log    Wczytano linie numer ${lineNumber}
    Log    Dane w linii ${lineWithTestData}
    [Return]    ${lineWithTestData}

Wczytaj Dane z losowej linii
    [Arguments]    ${filename}
    @{testData}=    Przetworz Dane z pliku    ${filename}
    Log    ${testData}
    ${index}    Losuj linie    @{testData}
    Log    Wylosowany nr indexu ${index}
    ${lineWithTestData}    Split String    @{testData}[${index}]    ;
    Log    zawartość wybranej linii ${lineWithTestData}
    [Return]    ${lineWithTestData}

Losuj linie
    [Arguments]    @{linesFromFile}
    ${maxIndex}    Get Length    ${linesFromFile}
    ${maxIndex}    Evaluate    ${maxIndex}-1
    ${maxIndex}    Convert To Integer    ${maxIndex}
    ${firstIndex}    Convert To Integer    1
    ${lineIndex}    Randint    ${firstIndex}    ${maxIndex}
    [Return]    ${lineIndex}
