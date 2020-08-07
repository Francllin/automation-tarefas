# encoding: utf-8
# language:pt

@web
@nova_tarefa
Funcionalidade: Nova tarefa - cadastrar uma nova tarefa
  Como uruário do site
  Quero poder cadastrar uma nova tarefa
  De modo que possa organizar o andamento de cada uma

  @#francllin_rios
  @%cadastrar
  @validar_novo_tarefa
  Cenário: Validar cadastro de uma nova tarefa
    Dado acessar a tela home principal
    Quando preencher o texto Ir ao mercado
    Então validar a apresentação do card com sucesso
