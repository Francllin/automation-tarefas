Feature: Completar uma tarefa

    @completar_tarefa
    Scenario: Validar uma tafera finalizada com sucesso
        Given tiver uma tarefa em TODO
        When clicar no checkbox
        Then validar que a tafera foi finalizada com sucesso
