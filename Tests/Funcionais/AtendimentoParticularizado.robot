*** Settings ***
Test Tags    AtendimentoParticularizado  
Resource   ../../Steps/Base_Steps.robot
Resource   ../../Resources/Helpers/GeradorDados.robot

*** Test Cases ***
TC01 - Realiza Atendimento Particularizado
     Dado que acesso o ConecteFas
     E realizo o login  
     E seleciono a unidade
     E inicio a Acolhida

     ${Existe}    Existe objeto    ${TermoUso.Btn_AceiterEntrar} 
     IF    ${Existe}
         E aceito termos de uso eCidadao
     END   
     
     &{PessoaGerada}    Gerar Pessoa
     E realizo a consulta de um cpf no eCidadao   ${PessoaGerada.Cpf}

     ${Existe}    Existe objeto    ${ConsultaCidadaos.Text_NenhumRegistro}    
     IF    ${Existe}
         Quando clico no botão Novo Cadastro no eCidadao
         Então realizo o cadastro do cidadao no eCidadao   &{PessoaGerada} 
     ELSE
         Então clico no botão Selecionar no eCidadao
     END

     E Avanço o Cadastro
     E Adiciona Endereço   
     E clico no botão Realizar Acolhida
     E seleciono a pessoa acolhida    &{PessoaGerada}
     E seleciono a Forma de Acesso    Opcao_Procura_Espontanea

     E Avanço o Cadastro
       
     
    


[Teardown]	Close Browser