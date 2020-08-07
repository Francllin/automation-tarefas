Feature: Tarefa Done

    @done_tarefa
    Scenario: Validar tarefa no status done
        When estiver uma tarefa done
        Then validar a tarefa no status done com sucesso

