*** Variables ***
&{AcolhidaFamilia}
...   Btn_Realizar_Acolhida=//*[@id="membros-familia"]//button[contains(text(),'Realizar Acolhida')]
...   Btn_Adicionar_Membro=//*[@id="membros-familia"]//*[contains(text(),'Adicionar Membro')]
...   Btn_Adicionar_Representante_Legal=//*[@id="membros-familia"]//*[contains(text(),'Adicionar Representante Legal')]
...   TextBox_Pessoa_Acolhida=//label[contains(text(),"Pessoa Acolhida")]/parent::div//span[@title = "Selecione uma opção"]
...   TextBox_Forma_Acesso=//label[contains(text(),"Forma de Acesso")]/parent::div//span[@title = "Selecione uma opção"]
...   Input_Modalidade_Atedimento_Remoto=//*[@id="atendimento-remoto"]
...   Input_Modalidade_Atedimento_Remoto=//*[@id="atendimento-presencial"]
...   TextBox_Tipo_Acolhimento=//label[contains(text(),"Tipo de Acolhimento")]/parent::div//span[@title = "Selecione uma opção"]
...   TextBox_Acoes=//*[@id="app"]//*[contains(text(),"Ações")]/parent::div//*[contains(@placeholder,"Selecione uma opção")]
    
&{FormaDeAcesso}
...   Opcao_Encaminhamento_Realizado_Abordagem_Social=//*[contains(@class, "select2-results") and contains(@id, "results")]/li[contains(text(), "ENCAMINHAMENTO REALIZADO PELA ABORDAGEM SOCIAL")]
...   Opcao_Encaminhamento_Realizado_Rede_SocioAssistencial=//*[contains(@class, "select2-results") and contains(@id, "results")]/li[contains(text(), "ENCAMINHAMENTO REALIZADO PELA REDE SOCIOASSISTENCIAL")]
...   Opcao_Encaminhamento_Realizado_Politicas_Publicas=//*[contains(@class, "select2-results") and contains(@id, "results")]/li[contains(text(), "ENCAMINHAMENTO REALIZADO PELAS DEMAIS POLÍTICAS PÚBLICAS")]
...   Opcao_Procura_Espontanea=//*[contains(@class, "select2-results") and contains(@id, "results")]/li[contains(text(), "PROCURA ESPONTÂNEA")]
...   Opcao_Encaminhamento_Realizado_Poder_Judiciario=//*[contains(@class, "select2-results") and contains(@id, "results")]/li[contains(text(), "ENCAMINHAMENTO REALIZADO PELO PODER JUDICIÁRIO")]
...   Opcao_Encaminhamento_Realizado_Outros_Orgaos_Sistema_Garantia_Direitos=//*[contains(@class, "select2-results") and contains(@id, "results")]/li[contains(text(), "ENCAMINHAMENTO REALIZADO POR OUTROS ÓRGÃOS DO SISTEMA DE GARANTIA DE DIREITOS")]

&{TipoAcolhimento}
...    Opcao_Orientacao=//*[contains(@class, "select2-results") and contains(@id, "results")]/li[contains(text(), "ORIENTAÇÃO")]
...    Opcao_Atendimento_Particularizado=//*[contains(@class, "select2-results") and contains(@id, "results")]/li[contains(text(), "ATENDIMENTO PARTICULARIZADO")]
...    Opcao_Encaminhar=//*[contains(@class, "select2-results") and contains(@id, "results")]/li[contains(text(), "ENCAMINHAR")]

&{Acoes}
...    Opcao_Cadastro_Unico=//*[contains(@class, "select2-results") and contains(@id, "results")]/li[contains(text(), "CADASTRO ÚNICO - INCLUSÃO, ATUALIZAÇÃO E EXCLUSÃO")]
...    Opcao_Conceder_Beneficios_Eventuais=//*[contains(@class, "select2-results") and contains(@id, "results")]/li[contains(text(), "CONCEDER BENEFICIOS EVENTUAIS")]
...    Opcao_Elaboracao_Relatorio_Tecnico_Informativo=//*[contains(@class, "select2-results") and contains(@id, "results")]/li[contains(text(), "ELABORAÇÃO DE RELATÓRIO TÉCNICO/INFORMATIVO")]
...    Opcao_Emissao_Carteira_Pessoa_Idosa=//*[contains(@class, "select2-results") and contains(@id, "results")]/li[contains(text(), "EMISSÃO CARTEIRA DA PESSOA IDOSA")]
...    Opcao_Emissao_Declaracao=//*[contains(@class, "select2-results") and contains(@id, "results")]/li[contains(text(), "EMISSÃO DE DECLARAÇÃO")]
...    Opcao_Encaminhamento=//*[contains(@class, "select2-results") and contains(@id, "results")]/li[contains(text(), "ENCAMINHAMENTO")]
...    Opcao_Entrega_Documentacao=//*[contains(@class, "select2-results") and contains(@id, "results")]/li[contains(text(), "ENTREGA DE DOCUMENTAÇÃO")]
...    Opcao_Formulario_Vai_Vem=//*[contains(@class, "select2-results") and contains(@id, "results")]/li[contains(text(), "FORMULÁRIO VAI E VEM CAIXA")]
...    Opcao_FPGB=//*[contains(@class, "select2-results") and contains(@id, "results")]/li[contains(text(), "FPGB - FORMULÁRIO PADRÃO DE GESTÃO DE BENEFÍCIOS")]
...    Opcao_Incluir_Sevico_Convivencia_Fortalecimento_Vinculos=//*[contains(@class, "select2-results") and contains(@id, "results")]/li[contains(text(), "INCLUIR EM SERVIÇO DE CONVIVÊNCIA E FORTALECIMENTO DE VÍNCULOS")]
...    Opcao_Inclusao_Acompanhamento=//*[contains(@class, "select2-results") and contains(@id, "results")]/li[contains(text(), "INCLUSÃO NO ACOMPANHAMENTO")]
...    Opcao_Orientacoes=//*[contains(@class, "select2-results") and contains(@id, "results")]/li[contains(text(), "ORIENTAÇÕES")]
...    Opcao_Realizar_Acompanhamento=//*[contains(@class, "select2-results") and contains(@id, "results")]/li[contains(text(), "REALIZAR ACOMPANHAMENTO")]
...    Opcao_Nao_Cumprimento_Condicoes_Bolsa_Familia=//*[contains(@class, "select2-results") and contains(@id, "results")]/li[contains(text(), "TRATAR O NÃO CUMPRIMENTO DE CONDICIONALIDADES DO BOLSA FAMÍLIA")]