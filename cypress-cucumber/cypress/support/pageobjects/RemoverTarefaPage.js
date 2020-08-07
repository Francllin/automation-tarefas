/// <reference types="Cypress" />

import RemoverTarefaElements from '../elements/RemoverTarefaElements'
const removerTarefaElements = new RemoverTarefaElements

class RemoverTarefaPage {
    btnSubmitRemover() {
        cy.get(removerTarefaElements.btnRemover())
        .click()
    }

    expectTarefaRemovida(text) {
        cy.get(removerTarefaElements.txtModalTarefaNome, {timeout: 30000})
        .should('not.have.value', text)
    }
}

export default RemoverTarefaPage;
