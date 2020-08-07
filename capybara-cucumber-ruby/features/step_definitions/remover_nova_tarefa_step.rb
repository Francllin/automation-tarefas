Quando("clicar na lixeira para remover a tarefa") do
  await(30) { remover_cadastro_tarefa.btn_remover.visible? }
  remover_cadastro_tarefa.btn_remover.click
end

Então("validar que a tarefa foi removida com sucesso") do
  expect(page).not_to have_selector("#app > section > ul > li")
end
