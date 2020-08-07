/// <reference types="Cypress" />

import CompletarTarefaElements from '../elements/CompletarTarefaElements'
import RemoverTarefaElements from '../elements/RemoverTarefaElements'
const completarTarefaElements = new CompletarTarefaElements
const removerTarefaElements = new RemoverTarefaElements

class CompletarTarefaPage {
    selecionarCheckbox() {
        cy.get(completarTarefaElements.slctCheckbox())
        .click()
    }

    expectTarefaRemovida(text) {
        cy.get(removerTarefaElements.txtModalTarefaNome, {timeout: 30000})
        .should('not.have.value', text)
    }
}

export default CompletarTarefaPage;
