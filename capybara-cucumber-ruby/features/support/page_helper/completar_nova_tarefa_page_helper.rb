Dir[File.join(File.dirname(__FILE__), '../*_page.rb')].map { |file| require file }

module PageObjects
  def completar_cadastro_tarefa
    @completar_cadastro_tarefa ||= Pages::CompletarCadastroTarefa.new
  end
end