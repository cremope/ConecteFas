*** Variables ***
&{CadastrarCidadao}
...   Btn_Avancar=//button[contains(text(),"Avançar")]
...   Input_Cep=//input[@placeholder="CEP" and @class="form-control"]
...   Input_Logradouro=//input[@placeholder="Logradouro" and @class="form-control"]
...   Input_Numero=//input[@placeholder="Número" and @class="form-control"]
...   Input_Bairro=//input[@placeholder="Bairro" and @class="form-control"]
...   Input_Complemento=//input[@placeholder="Complemento" and @class="form-control"]
...   Input_Referencia=//input[@placeholder="Referência" and @class="form-control"]
...   Input_Nucleo_Regional=//input[@placeholder="Núcleo" and @class="form-control"]
...   Input_Cidade=//input[@placeholder="Cidade" and @class="form-control"]
...   Input_Estado=//input[@placeholder="Estado" and @class="form-control"]
...   Input_Ocupacao_Irregular_Nao=//input[@id="ocupacao-iregular-oficial-nao"]
...   Input_Ocupacao_Irregular_Sim=//input[@id="ocupacao-iregular-oficial-sim"]
...   Btn_Salvar=//*[@id="aba-endereco-oficial"]//button[contains(text(),'Salvar')]
