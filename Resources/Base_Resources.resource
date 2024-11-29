*** Settings ***
Library    SeleniumLibrary    run_on_failure=NOTHING
Library    ../Resources/Libs/DotEnv/    ${ENVIRONMENT}

*** Variables ***


#ambiente
${ENVIRONMENT}        homolog

#navegador e urls
${Browser}    chrome
${Url}    https://teste-gestor-fas.curitiba.pr.gov.br/Autenticar/Entrar

#Variáveis de espera
${TempoEspera_10}    10
${Sleep_1}    1

#Dados Login
${Usuario}    rlopez
${Senha}    \#38501.1990