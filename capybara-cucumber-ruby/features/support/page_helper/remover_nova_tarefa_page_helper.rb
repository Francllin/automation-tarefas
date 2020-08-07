Dir[File.join(File.dirname(__FILE__), '../*_page.rb')].map { |file| require file }

module PageObjects
  def remover_cadastro_tarefa
    @remover_cadastro_tarefa ||= Pages::RemoverCadastroTarefa.new
  end
end