module Pages
  class CadastroTarefa < SitePrism::Page

    element :btn_submit, '#app > section > form > button:nth-child(3)'
    element :inpt_tarefa, '#app > section > form > input[type=text]'
    element :txt_tabela, '#app > section > ul > li'

    def cadastar_tarefa(**options)
      inpt_tarefa.set(options[:tarefa])
      btn_submit.click
    end
  end
end
