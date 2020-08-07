# encoding: utf-8
# language:pt

@web
@nova_tarefa
Funcionalidade: Completar uma Nova tarefa
  Como uruário do site
  Quero poder completar uma nova tarefa
  De modo que possa finalizar mais uma atividade

  @#francllin_rios
  @%nova_tarefa
  @validar_completar_novo_tarefa
  @add_nova_tarefa
  Cenário: Validar completar uma nova tarefa
    Dado acessar a tela home principal
    Quando clicar no checkbox
    Então validar que a tafera foi finalizada com sucesso