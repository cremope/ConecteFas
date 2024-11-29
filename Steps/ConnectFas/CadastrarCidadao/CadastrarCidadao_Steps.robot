*** Settings ***    
Resource  ../../../Resources/Base_Resources.resource
Resource  ../../../PageObjects/Base_PageObjects.resource
Resource    ../../../Resources/Helpers/GeradorDados.robot
Library    SeleniumLibrary

*** Keywords ***
E Avanço o Cadastro
    Aguarda carregamento completo da pagina e elemento    ${CadastrarCidadao.Btn_Avancar} 
    Click Element                                         ${CadastrarCidadao.Btn_Avancar}

E Adiciona Endereço
    [Arguments]    &{Pessoa}

    &{Endereco}    Gerar Endereco   
    Aguarda carregamento completo da pagina e elemento    ${CadastrarCidadao.Input_Cep} 
    Click Element                                         ${CadastrarCidadao.Input_Cep}
    Input Text                                            ${CadastrarCidadao.Input_Cep}              ${Endereco.Cep}
        
    Click Element                                         ${CadastrarCidadao.Input_Numero}  
    Aguarda carregamento completo da pagina e elemento    ${CadastrarCidadao.Input_Logradouro}         
    Input Text                                            ${CadastrarCidadao.Input_Numero}           ${Endereco.Numero}
    Input Text                                            ${CadastrarCidadao.Input_Complemento}      ${Endereco.Complemento}
    Input Text                                            ${CadastrarCidadao.Input_Referencia}       ${Endereco.Referencia}

    Click Element                                         ${CadastrarCidadao.Input_Ocupacao_Irregular_Nao}
    Coleta Evidencia

    Scroll Element Into View                              ${CadastrarCidadao.Btn_Salvar}
    Coleta Evidencia
    Click Button                                          ${CadastrarCidadao.Btn_Salvar}

E clico no botao Realizar Acolhida
    Aguarda carregamento completo da pagina e elemento    ${CadastrarCidadao.Btn_Realizar_Acolhida} 
    Click Button                                          ${CadastrarCidadao.Btn_Realizar_Acolhida}