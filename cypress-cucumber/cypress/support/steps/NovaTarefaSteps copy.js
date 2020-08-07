/* global Given, Then, When */

import NovaTarefaPage from '../pageobjects/NovaTarefaPage'
const novaTarefaPage = new NovaTarefaPage

Given("acessar a tela home principal", () => {
    novaTarefaPage.waitHome();
})

When("preencher o texto Ir ao mercado", () => {
    novaTarefaPage.inptNomeTarefa('Ir ao mercado');
    novaTarefaPage.btnSubmit();
})

Then("validar a apresentação do card com sucesso", () => {
    novaTarefaPage.visualizarNovaTarefa('Ir ao mercado') 
})