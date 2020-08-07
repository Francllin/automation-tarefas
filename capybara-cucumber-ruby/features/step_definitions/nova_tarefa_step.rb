Dado("acessar a tela home principal") do
  await(30) { cadastro_tarefa.btn_submit.visible? }
  criar_tarefa if @add_nova_tarefa
end

Quando("preencher o texto Ir ao mercado") do
  massa_tarefa = { tarefa: buscar_massa('massa tarefa') }
  cadastro_tarefa.cadastar_tarefa(massa_tarefa)
end

Então("validar a apresentação do card com sucesso") do
  expect(cadastro_tarefa.txt_tabela.visible?).to be_truthy
end
