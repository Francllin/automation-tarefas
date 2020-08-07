/// <reference types="Cypress" />

import NovaTarefaElements from '../elements/NovaTarefaElements'
const novaTarefaElements = new NovaTarefaElements
const url = Cypress.config("baseUrl")

class NovaTarefaPage {
    acessarSite() {
        cy.visit(url)
    }

    waitHome() {
        cy.get(novaTarefaElements.inptNomeTarefa, { timeout: 30000 })
    }

    btnSubmit() {
        cy.get(novaTarefaElements.btnSubmit()).click()
    }

    inptNomeTarefa(tarefa) {
        cy.get(novaTarefaElements.inptNomeTarefa()).type(tarefa)
    }

    visualizarNovaTarefa(text) {
        cy.get('body').should('contain', text) 
    } 
}

export default NovaTarefaPage;
