*** Settings ***
Library      ../../Resources/Libs/Uteis/data_generator.py
Library    Collections


*** Variables ***
&{Pessoa}    Cpf=    Nome=     Email=    DataNascimento=    Telefone=    Celular=    NomePai=    NomeMae=
&{Endereco}    Cep=    Logradouro=     Numero=    Bairro=   Complemento=    Referencia=     NucleoRegional=     Cidade=     Estado=

*** Keywords ***
Gerar Pessoa

    ${Cpf}            Generate Cpf
    ${Nome}           Generate Name Male
    ${Email}          Generate Email
    ${DtNascimento}   Generate Dt Nascimento
    ${Telefone}       Generate Phone Number
    ${Celular}        Generate Cell Phone Number
    ${NomeMae}        Generate Name Female
    ${NomePai}        Generate Name Male

    &{Pessoa}    Create Dictionary    
    ...    Cpf=${Cpf} 
    ...    Nome=${Nome}    
    ...    Email=${Email}    
    ...    DataNascimento=${DtNascimento}    
    ...    Telefone=${Telefone}    
    ...    Celular=${Celular}    
    ...    NomePai=${NomePai}    
    ...    NomeMae=${NomeMae}

    Log To Console   Dados Pessoa gerados:   
    Log To Console   Nome: ${Pessoa.Nome}
    Log To Console   Email: ${Pessoa.Email}
    Log To Console   Data de Nascimento: ${Pessoa.DataNascimento}
    Log To Console   Telefone: ${Pessoa.Telefone}
    Log To Console   Celular: ${Pessoa.Celular}
    Log To Console   Nome Pai: ${Pessoa.NomePai}
    Log To Console   Nome Mãe: ${Pessoa.NomeMae}    

    RETURN   &{Pessoa}

Gerar Endereco
    [Arguments]    ${GeraEndereco}=${False}

    IF    ${GeraEndereco}
        ${Cep}               Generate Cep  
        ${Logradouro}		 Generate Logradouro
        ${Numero}			 Generate Numero 
        ${Bairro}			 Generate Bairro     
        ${Complemento}		 Generate Complemento    
        ${Referencia}		 Generate Referencia     
        ${NucleoRegional}    Generate Nucleo Regional    
        ${Cidade}			 Generate Cidade     
        ${Estado}			 Generate Estado
    ELSE
        ${Cep}               Set Variable    81925060              
        ${Logradouro}        Set Variable    RUA TIJUCAS DO SUL	
        ${Numero}		     Generate Numero Randomico
        ${Bairro}		     Set Variable    SITIO CERCADO
        ${Complemento}	     Set Variable    APTO 10 BLOCO A
        ${Referencia}	     Set Variable    BNB RESIDENCIAL CASCAVEL
        ${NucleoRegional}    Set Variable    BAIRRO NOVO 
        ${Cidade}		     Set Variable    CURITIBA
        ${Estado}		     Set Variable    PARANA
    END

    &{Endereco}    Create Dictionary    
        ...    Cep=${Cep}				
        ...    Logradouro=${Logradouro}		
        ...    Numero=${Numero}			
        ...    Bairro=${Bairro}			
        ...    Complemento=${Complemento}		
        ...    Referencia=${Referencia}		
        ...    NucleoRegional=${NucleoRegional}	
        ...    Cidade=${Cidade}
        ...    Estado=${Estado}

    Log To Console   Endereco gerado: &{Endereco}  
 
    RETURN     &{Endereco}