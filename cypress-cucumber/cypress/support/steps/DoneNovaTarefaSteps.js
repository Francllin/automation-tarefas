/* global Given, Then, When */

import NovaTarefaPage from '../pageobjects/NovaTarefaPage'
import CompletarTarefaPage from '../pageobjects/CompletarTarefaPage'
import DoneTarefaPage from '../pageobjects/DoneTarefaPage'

const doneTarefaPage = new DoneTarefaPage
const novaTarefaPage = new NovaTarefaPage
const completarTarefaPage = new CompletarTarefaPage

When("estiver uma tarefa done", () => {
    novaTarefaPage.waitHome();
    novaTarefaPage.inptNomeTarefa('Ir ao mercado');
    novaTarefaPage.btnSubmit();
    completarTarefaPage.selecionarCheckbox();
    doneTarefaPage.clicarDone();
})

Then("validar a tarefa no status done com sucesso", () => {
    doneTarefaPage.expectTarefaVisivel();
})