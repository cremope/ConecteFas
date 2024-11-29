*** Settings ***    
Resource  ../../../Resources/Base_Resources.resource
Resource  ../../../PageObjects/Base_PageObjects.resource


*** Keywords ***
Dado que acesso o ConecteFas
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${options}    add_argument    --incognito
    Open Browser    ${Url}    ${Browser}    options=${options}
    Delete All Cookies
    ${dev_tools}=    Execute Javascript    return window.performance.clearResourceTimings();
    Log To Console    Cache Limpo
    Maximize Browser Window

E realizo o login    
    Aguarda carregamento completo da pagina e elemento    ${Login.Input_Usuario}
    
    Click Element    ${Login.Input_Usuario}
    Input Text    ${Login.Input_Usuario}    text=${Usuario}
    Click Element    ${Login.Input_Senha}
    Input Text    ${Login.Input_Senha}    text=${Senha}
    Coleta Evidencia
    Click Element    ${Login.Btn_Salvar}
    
E fecho o navegador
    Close Browser