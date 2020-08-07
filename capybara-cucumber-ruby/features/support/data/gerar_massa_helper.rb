def gerar_primeiro_nome
  Faker::Name.first_name
end

def gerar_segundo_nome
  Faker::Name.last_name
end

def gerar_email
  email = Faker::Internet.email
  salvar_massa("#{File.expand_path('', __dir__)}/massa_email.yaml", "email: #{email}")
  email
end

def gerar_alias
  Faker::Lorem.sentence(word_count: 3)
end
