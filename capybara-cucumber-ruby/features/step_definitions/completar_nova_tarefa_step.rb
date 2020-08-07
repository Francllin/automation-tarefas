Quando("clicar no checkbox") do
  await(30) { completar_cadastro_tarefa.btn_checkbox.visible? }
  completar_cadastro_tarefa.btn_checkbox.click
end

Então("validar que a tafera foi finalizada com sucesso") do
  expect(page).not_to have_selector("#app > section > ul > li")
end
