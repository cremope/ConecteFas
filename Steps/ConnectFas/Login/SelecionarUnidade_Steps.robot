*** Settings ***    
Resource  ../../../Resources/Base_Resources.resource
Resource  ../../../PageObjects/Base_PageObjects.resource


*** Keywords ***
E seleciono a unidade

    Aguarda carregamento completo da pagina e elemento    ${SelecionarUnidade.Btn_Selecionar}
    Coleta Evidencia
    Click Element    ${SelecionarUnidade.Btn_Selecionar}