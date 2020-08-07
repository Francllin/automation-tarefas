# Teste QA Dasa

Inicie o teste clonando este repositorio:

```bash
git clone git@github.com:dasa-health/test-qa.git
```

Crie um repositorio no seu github e adicione as seguintes pessoas como reviewers:

- [@guilhermedgl](https://github.com/guilhermedgl)
- [@codermarcos](https://github.com/codermarcos)
- [@onlurking](https://github.com/onlurking)
- [@letfr](https://github.com/letfr)


Para realizar este teste você **PODE**:

- Alterar o código caso veja necessidade (por ex: Para criar seletores melhores etc...).

- Criar os testes na pasta [src/tests](./tests) a partir do clone deste repositorio usando o [cypress](https://www.cypress.io/).

- Escrever os teste em um repositório separado do código usando sua stack prefirida (usar cypress é um *desejavel*) **LEMBRE-SE DE DOCUMENTAR**.

- Escrever seus próprios cenários como preferir.

- Apresentar **idéias** e apontar **bug** no projeto como preferir.

**Não** pode:

- Deixar de criar os testes para os cenários já existentes em [tests/e2e/scenarios](./tests/e2e/scenarios) de 0 a 4.

- Esquecer de documentar se criar os testes separados do código.

**Desejável**:

- Que aplique as [boas praticas do cypress](https://docs.cypress.io/guides/references/best-practices.html)

## Setup do projeto

Se quiser enteder melhor o projeto pode dar uma olhada no [Vue.js](https://cli.vuejs.org/config/).

### Usando Docker

Você pode iniciar a aplicação usando o docker:

```bash
docker build -t test-qa . && docker run test-qa -p 8080
```

Se tudo ocorrer como esperado pode conferir nesta porta [http://localhost:8080/](http://localhost:8080/)

### Ou se prefir utilizando Node.js instalado

```bash
npm install
```

#### Compila e provém [http://localhost:8080/](http://localhost:8080/)

```bash
npm run serve
```

#### Para roda os testes e2e usando [cypress](https://www.cypress.io/)

```bash
npm run test:e2e
```

## Obrigado por realizar os teste

Caso sinta-se confortavel [avaliações são sempre bem-vindas este teste por aqui](https://forms.gle/qKEf7thRgnjvG2nXA)
