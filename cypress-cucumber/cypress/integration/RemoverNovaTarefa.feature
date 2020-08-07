Feature: Remover Nova tarefa

    @remover_tarefa
    Scenario: Validar remoção de uma nova tarefa
        Given acessar a tela home principal
        When clicar na lixeira para remover a tarefa
        Then validar que a tarefa foi removida com sucesso