import NovaTarefaPage from '../pageobjects/NovaTarefaPage'
const novaTarefaPage = new NovaTarefaPage

// Acessar a Url do site
before(() => {
    novaTarefaPage.acessarSite();
})