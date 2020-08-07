# encoding: utf-8
# language:pt

@web
@remover_nova_tarefa
Funcionalidade: Nova tarefa - remover uma nova tarefa
  Como uruário do site
  Quero poder remover uma nova tarefa
  De modo que possa organizar o andamento de cada uma

  @#francllin_rios
  @%cadastrar
  @validar_remover_novo_tarefa
  @add_nova_tarefa
  Cenário: Validar remover uma tarefa
    Dado acessar a tela home principal
    Quando clicar na lixeira para remover a tarefa
    Então validar que a tarefa foi removida com sucesso
