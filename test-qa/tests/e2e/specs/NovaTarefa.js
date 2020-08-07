/// <reference types="Cypress" />

const url = Cypress.config("baseUrl")
const tarefa = 'Ir ao mercado'

describe('Validar inclusão de uma nova tarefa', () => {
  it('acessar a tela home principal', () => {
    cy.visit(url)  
  });

  it('preencher o texto Ir ao mercado', () => {
    cy.get('input').type(tarefa)
    cy.get('[type="submit"] > .material-icons').click()
  });

  it('validar a apresentação do card com sucesso', () => {
    cy.get('body').should('contain', tarefa) 
});
})