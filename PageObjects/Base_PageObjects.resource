*** Settings ***
Library   SeleniumLibrary
Library   Screenshot

Resource  ../Resources/Base_Resources.resource

Resource  ConnectFas/Login.resource
Resource  ConnectFas/CadastrarCidadao.resource
Resource  ConnectFas/SelecionarUnidade.resource
Resource  ConnectFas/Inicio.resource
Resource  ConnectFas/AcolhidaFamilia.resource

Resource  eCidadao/TermoUso.resource
Resource  eCidadao/ConsultaCidadaos.resource
Resource  eCidadao/CadastroCidadao.resource


*** Keywords ***
Existe objeto 
    [Arguments]    ${Element}
    ${Existe}=    Run Keyword And Return Status    Page Should Contain Element    ${Element}    
    Run Keyword If    ${Existe}    
    ...    Log To Console    O elemento ${Element} está presente.
    
    Run Keyword If    not ${Existe}    
    ...    Log To Console    O elemento ${Element}  não está presente.
    RETURN     ${Existe}

Aguarda carregamento completo da pagina e elemento
    [Arguments]    ${Element}
    Wait For Condition	return document.readyState == "complete"
    Wait Until Element Is Visible    ${Element}
    ...    timeout=${TempoEspera_10}
    ...    error=Não foi encontrado o objeto: ${Element}

Valida se contem o texto no elemento
    [Arguments]    ${Element}    ${Valor}

    Wait Until Element Contains    ${Element}    ${Valor}   
    ...    timeout=${TempoEspera_10} 
    ...    error=Não foi encontrado o valor ${Valor} no objeto: ${Element}

Coleta Evidencia
    Take Screenshot    ${TEMPDIR}/mypic