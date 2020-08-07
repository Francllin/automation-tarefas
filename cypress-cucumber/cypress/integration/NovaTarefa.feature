Feature: Nova tarefa

    @nova_tarefa
    Scenario: Validar adicionar uma nova tarefa
        Given acessar a tela home principal
        When preencher o texto Ir ao mercado
        Then validar a apresentação do card com sucesso

