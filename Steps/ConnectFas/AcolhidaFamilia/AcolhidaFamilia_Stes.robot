*** Settings ***    
Resource  ../../../Resources/Base_Resources.resource
Resource  ../../../PageObjects/Base_PageObjects.resource
Library    SeleniumLibrary
Library    String
Library    Collections

*** Keywords ***
E clico no botão Realizar Acolhida
    Aguarda carregamento completo da pagina e elemento    ${AcolhidaFamilia.Btn_Realizar_Acolhida} 
    Click Button                                          ${AcolhidaFamilia.Btn_Realizar_Acolhida}

E seleciono a pessoa acolhida
    [Arguments]    &{Pessoa}
    Aguarda carregamento completo da pagina e elemento    ${AcolhidaFamilia.TextBox_Pessoa_Acolhida} 
    Click Element                                         ${AcolhidaFamilia.TextBox_Pessoa_Acolhida} 
    
    ${Nome}    Convert To Upper Case    ${Pessoa.Nome}
    ${XpathNomeAcolhido}    Set Variable    //*[contains(@class, "select2-results") and contains(@id, "results")]/li[contains(text(), "${Nome}")]
    Aguarda carregamento completo da pagina e elemento    ${XpathNomeAcolhido}
    Click Element                                         ${XpathNomeAcolhido} 

E seleciono a Forma de Acesso
    [Arguments]    ${FormaAcesso}
    Aguarda carregamento completo da pagina e elemento    ${AcolhidaFamilia.TextBox_Forma_Acesso} 
    Click Element                                         ${AcolhidaFamilia.TextBox_Forma_Acesso} 
    Clico na Forma De Acesso                              ${FormaAcesso}

Testar Forma De Acesso
    [Documentation]    Testa se a variável ${FormaAcesso} corresponde a uma das opções no dicionário e clica no elemento correspondente.
    ${FormaAcesso} =    Set Variable    Opcao_Encaminhamento_Realizado_Abordagem_Social
    

Clico na Forma De Acesso
    [Arguments]    ${FormaAcesso}
    ${xpath}    Run Keyword If    ${FormaAcesso} in &{FormaDeAcesso}    Get From Dictionary    &{FormaDeAcesso}    ${FormaAcesso}
    Run Keyword If    ${xpath} != NONE    Click Element    ${xpath}
    Run Keyword If    ${xpath} == NONE    Fail    Forma de acesso "${FormaAcesso}" não encontrada no dicionário &{FormaDeAcesso}.
