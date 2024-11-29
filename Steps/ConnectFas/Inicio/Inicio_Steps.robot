*** Settings ***    
Resource  ../../../Resources/Base_Resources.resource
Resource  ../../../PageObjects/Base_PageObjects.resource


*** Keywords ***
E inicio a Acolhida 

    Aguarda carregamento completo da pagina e elemento    ${Inicio.Link_Acolhida}
    Coleta Evidencia
    Click Element    ${Inicio.Link_Acolhida}
    
    Aguarda carregamento completo da pagina e elemento    ${Inicio.Link_Iniciar_Acolhida}
    Coleta Evidencia
    Click Element    ${Inicio.Link_Iniciar_Acolhida}