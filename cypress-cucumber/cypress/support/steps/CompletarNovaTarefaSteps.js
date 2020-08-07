/* global Given, Then, When */

import NovaTarefaPage from '../pageobjects/NovaTarefaPage'
import CompletarTarefaPage from '../pageobjects/CompletarTarefaPage'
const novaTarefaPage = new NovaTarefaPage
const completarTarefaPage = new CompletarTarefaPage

Given("tiver uma tarefa em TODO", () => {
    novaTarefaPage.waitHome();
    novaTarefaPage.inptNomeTarefa('Ir ao mercado');
    novaTarefaPage.btnSubmit();
})

When("clicar no checkbox", () => {
    completarTarefaPage.selecionarCheckbox();
})

Then("validar que a tafera foi finalizada com sucesso", () => {
    completarTarefaPage.expectTarefaRemovida();
})