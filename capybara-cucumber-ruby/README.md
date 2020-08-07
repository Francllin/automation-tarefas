## Instalando Ruby

1. Baixar instalador

```
$ https://github.com/oneclick/rubyinstaller2/releases/download/RubyInstaller-2.6.6-1/rubyinstaller-devkit-2.6.6-1-x64.exe
```

2. Selecionar as opções

    - Add Ruby executables to your PATH
    - Associate .rb and .rbw files with this Ruby installation 
    - Seguir com instalação normal


## Instalando NodeJS

1. Baixar instalador 
```
$ https://nodejs.org/dist/v12.16.3/node-v12.16.3-x64.msi
```

2. Instalação padrão


## Instalação Chromedriver

1. Executar os seguintes comandos no prompt de comando escolhido:

```
$ npm config set strict ssl false
```
```
$ npm install -g chromedriver
```

2. Baixar instalador do Chromedriver correspondente à versão do Chrome da sua máquina 

```
$ https://chromedriver.chromium.org/downloads
```

3. Extrair o .zip e adicionar o arquivo .exe no diretório "C:\{versão_do_ruby}\bin"


## Passos para rodar projeto e cenário


 1. Clonando o repositório

Temos que clonar o repositório em sua máquina para que possamos visualizar os testes, para isso:

```
$ git clone https://github.com/Francllin/automation-web.git
```


 2. Instalando os pacotes

Após o repositório ser clonado, acesse-o pela linha de comando do seu sistema operacional e estando na raiz do projeto, use o comando:
```
$ gem install bundler
```

Para instalar as gemas utilizadas:
```
$ bundle install --jobs 8
```

Depois de todos os pacotes serem instalados corretamente, podemos executar a interface de testes, via linha de comando, no PATH da raiz do projeto:
```
$ acessar o projeto test-qa e rodar o comando 'npm run serve'
```
```
$ cucumber -p uat -p headless_true
```

***

## Links úteis

- [Site oficial Ruby](https://www.ruby-lang.org/pt/)
- [Site oficial Cucumber](https://cucumber.io/)
- [Repositório site-prism](https://github.com/site-prism/site_prism)

***
