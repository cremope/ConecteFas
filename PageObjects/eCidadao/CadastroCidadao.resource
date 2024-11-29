*** Variables ***
&{CadastroCidadao}
...  Title_CadastroCidadao=//h2[contains(text(),"Cadastro de Cidadão Administrativo")]
...  Input_Nome=//*[@id="Nome"]
...  Input_Email=//*[@id="Email"]
...  Input_ConfirmarEmail=//*[@id="ConfirmarEmail"]
...  Input_dtNascimento=//*[@id="DataNascimento"]
...  Input_Telefone=//*[@id="Telefone"]
...  Input_Celular=//*[@id="Celular"]

...  Input_Filiacao1=//*[@id="Filiacao1"]
...  Span_Selecione_Filiacao1=//*[@id="select2-TipoFiliacao1-container"]/parent::span
...  List_Filiacao1_Mae=//li[contains(@id, 'select2-TipoFiliacao1-result') and contains(@id, '-Mãe')]
...  List_Filiacao1_Pai=//li[contains(@id, 'select2-TipoFiliacao1-result') and contains(@id, '-Pai')]
  
...  Input_Filiacao2=//*[@id="Filiacao2"]
...  Span_Selecione_Filiacao2=//*[@id="select2-TipoFiliacao2-container"]/parent::span
...  List_Filiacao2_Mae=//li[contains(@id, 'select2-TipoFiliacao2-result') and contains(@id, '-Mãe')]
...  List_Filiacao2_Pai=//li[contains(@id, 'select2-TipoFiliacao2-result') and contains(@id, '-Pai')]

...  Input_Sexo_Feminino=//*[@id="Sexo1"]//parent::label
...  Input_Sexo_Masculino=//*[@id="Sexo2"]//parent::label
...  Input_Sexo_InterSexo=//*[@id="Sexo4"]//parent::label
...  Input_Sexo_NaoDeclarar=//*[@id="Sexo3"]//parent::label
...  Input_Genero_CisGenero=//input[@id="Genero0"]//parent::label
...  Input_Genero_MulherTrans=//*[@id="Genero1"]//parent::label
...  Input_Genero_HomemTrans=//*[@id="Genero2"]//parent::label
...  Input_Genero_NaoDeclarar=//*[@id="Genero3"]//parent::label
...  Input_Genero_NaoBinario=//*[@id="Genero4"]//parent::label
...  Input_NomeSocial=//*[@id="NomeSocial"]
...  BtnSalvar=//*[@id="btnInserir"]