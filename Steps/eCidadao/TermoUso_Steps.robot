*** Settings ***    
Resource  ../../Resources/Base_Resources.resource
Resource  ../../PageObjects/Base_PageObjects.resource

Library    SeleniumLibrary

*** Keywords ***
E aceito termos de uso eCidadao
    
    Aguarda carregamento completo da pagina e elemento    ${TermoUso.Btn_AceiterEntrar} 
    Coleta Evidencia
    Click Element    ${TermoUso.Btn_AceiterEntrar}