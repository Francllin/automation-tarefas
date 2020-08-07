def buscar_massa(chaves, local=false)
  ambiente = local.eql?(true) ? 'massa_email' : ENVIRONMENT_TYPE
  massa_ambiente = YAML.load_file("./features/support/data/#{ambiente}.yaml")

  # busca massa no arquivo por ambiente
  dados = buscar_dados(chaves, massa_ambiente) unless chaves.include? 'gerar'
  dados = gerar_massa(chaves) if chaves.include? 'gerar'
  return dados unless dados.nil?
end

# metodo utilizado para transformar frase ou palavra em chave para massa
# passa para downcase e substitui espacos por underlines
def normalizar_chave(chave)
  chave.downcase.tr(' ', '_')
end

# metodo para gerar massa dinamica passando parametros to_i ou somente o nome do metodo. so recebe string to_s
# EX: chaves = "gerar_cpf" / chaves = "gerar_numero 4"
def gerar_massa(chaves)
  chaves.split(' ').size > 1 ? send(chaves.split(' ').first.to_sym, chaves.split(' ').last.to_i) : send(chaves.split(' ').first.to_sym)
end

def buscar_dados(chaves, massa)
  chaves = chaves.split(' ') if chaves.instance_of? String
  dados = massa
  chaves.each do |chave|
    dados = dados[chave]
    break if dados.nil?
  end
  dados
end

def scroll_to_top
  page.execute_script('window.scrollTo(0,0)')
end

def salvar_massa(file, dados)
  File.open(file, 'w') { |file| file.write(dados) }
end

def criar_tarefa
  step 'preencher o texto Ir ao mercado'
end