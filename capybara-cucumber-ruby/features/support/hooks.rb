Before do
  SetUrl.new.load
end

Before do |scenario|
  @add_nova_tarefa = scenario.tags.select { |item| item.name == '@add_nova_tarefa' }.any?
end
