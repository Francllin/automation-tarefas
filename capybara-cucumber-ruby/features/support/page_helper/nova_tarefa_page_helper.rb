Dir[File.join(File.dirname(__FILE__), '../*_page.rb')].map { |file| require file }

module PageObjects
  def cadastro_tarefa
    @cadastro_tarefa ||= Pages::CadastroTarefa.new
  end
end