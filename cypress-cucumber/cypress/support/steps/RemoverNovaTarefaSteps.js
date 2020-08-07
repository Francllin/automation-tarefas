/* global Given, Then, When, before */

import NovaTarefaPage from '../pageobjects/NovaTarefaPage'
import RemoverTarefaPage from '../pageobjects/RemoverTarefaPage'
const novaTarefaPage = new NovaTarefaPage
const removerTarefaPage = new RemoverTarefaPage

When("clicar na lixeira para remover a tarefa", () => {
    novaTarefaPage.inptNomeTarefa('Ir ao mercado');
    novaTarefaPage.btnSubmit();
    removerTarefaPage.btnSubmitRemover();
})

Then("validar que a tarefa foi removida com sucesso", () => {
    removerTarefaPage.expectTarefaRemovida('Ir ao mercado')
})