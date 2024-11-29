*** Settings ***    
Resource  ../../Resources/Base_Resources.resource
Resource  ../../PageObjects/Base_PageObjects.resource

Library    SeleniumLibrary

*** Keywords ***
E realizo a consulta de um cpf no eCidadao
    [Arguments]    ${Cpf}

    Aguarda carregamento completo da pagina e elemento    ${ConsultaCidadaos.Input_Cpf}  
    Click Element    ${ConsultaCidadaos.Input_Cpf}
    Input Text    ${ConsultaCidadaos.Input_Cpf}    text=${Cpf}
    Coleta Evidencia
    Click Button    ${ConsultaCidadaos.Btn_Filtrar}

Quando clico no botão Novo Cadastro no eCidadao

    Aguarda carregamento completo da pagina e elemento    ${ConsultaCidadaos.Btn_NovoCadastro}
    Coleta Evidencia
    Click Element    ${ConsultaCidadaos.Btn_NovoCadastro}

Então clico no botão Selecionar no eCidadao

    Aguarda carregamento completo da pagina e elemento    ${ConsultaCidadaos.Btn_Selecionar}   
    Coleta Evidencia
    Click Element    ${ConsultaCidadaos.Btn_Selecionar}