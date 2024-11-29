*** Settings ***    
Resource  ../../Resources/Base_Resources.resource
Resource  ../../PageObjects/Base_PageObjects.resource
Library   ../../Resources/Libs/Uteis/data_generator.py

*** Keywords ***
Então realizo o cadastro do cidadao no eCidadao
    [Arguments]    &{Pessoa}
    
    Aguarda carregamento completo da pagina e elemento     ${CadastroCidadao.Input_Nome} 
    Input Text    ${CadastroCidadao.Input_Nome}    text=${Pessoa.Nome}
    Input Text    ${CadastroCidadao.Input_Email}    text=${Pessoa.Email}
    Click Element    ${CadastroCidadao.Title_CadastroCidadao}

    Aguarda carregamento completo da pagina e elemento     ${CadastroCidadao.Input_ConfirmarEmail}
    Input Text    ${CadastroCidadao.Input_ConfirmarEmail}    text=${Pessoa.Email}
    Input Text    ${CadastroCidadao.Input_dtNascimento}    text=${Pessoa.DataNascimento}
    Click Element    ${CadastroCidadao.Input_Telefone}
    Input Text    ${CadastroCidadao.Input_Telefone}    text=${Pessoa.Telefone}
    Input Text    ${CadastroCidadao.Input_Celular}    text=${Pessoa.Celular}
    Input Text    ${CadastroCidadao.Input_Filiacao1}    text=${Pessoa.NomeMae}
    Click Element    ${CadastroCidadao.Span_Selecione_Filiacao1} 

    Aguarda carregamento completo da pagina e elemento     ${CadastroCidadao.List_Filiacao1_Mae}  
    Click Element    ${CadastroCidadao.List_Filiacao1_Mae}

    Input Text    ${CadastroCidadao.Input_Filiacao2}    text=${Pessoa.NomePai}
    Click Element    ${CadastroCidadao.Span_Selecione_Filiacao2} 

    Aguarda carregamento completo da pagina e elemento     ${CadastroCidadao.List_Filiacao2_Pai}  
    Click Element    ${CadastroCidadao.List_Filiacao2_Pai}
    Click Element    ${CadastroCidadao.Input_Sexo_Masculino}

    Aguarda carregamento completo da pagina e elemento     ${CadastroCidadao.Input_Genero_CisGenero}  
    Scroll Element Into View    ${CadastroCidadao.Input_Genero_CisGenero}  
    Click Element    ${CadastroCidadao.Input_Genero_CisGenero}

    Coleta Evidencia
    Click Button    ${CadastroCidadao.BtnSalvar}