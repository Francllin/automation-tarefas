/// <reference types="Cypress" />

import DoneTarefaElements from '../elements/DoneTarefaElements'
import RemoverTarefaElements from '../elements/RemoverTarefaElements'
const doneTarefaElements = new DoneTarefaElements
const removerTarefaElements = new RemoverTarefaElements

class CompletarTarefaPage {
    clicarDone() {
        cy.get(doneTarefaElements.btnDone())
        .click()
    }

    expectTarefaVisivel(text) {
        cy.get(doneTarefaElements.txtTarefaDone, {timeout: 30000})
        .should('contain', text)
    }
}

export default CompletarTarefaPage;
