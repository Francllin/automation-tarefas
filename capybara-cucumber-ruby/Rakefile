require 'yaml'
require 'rake'
require 'json'
require 'rubocop'
require 'open3'

desc 'Validar de código ruby'
task :rubocop do
  run_rubocop
end

desc 'Gherkin Linter'
task :gherkin_linter do
  run_gherkin_linter
end

desc 'Run Gherkin Linter e Rubocop'
task :run_linters do
  run_linters
end

def run_linters
  run_rubocop
  run_gherkin_linter
end

def run_gherkin_linter
  puts "\nAnalyzing feature files with Cuke Linter..."
  config = '-c cuke_linter/configs.yml'
  output = '-o cuke_linter/cuke_linter_report.txt'
  result = system "cuke_linter #{config} #{output}"
  puts 'There are problems in the feature files! Please, check the results file.' unless result
  puts 'Cuke Linter Analysis finished!'
end

def run_rubocop
  puts 'Analisando código-fonte com o Rubocop...'
  checklist = '-r rubocop/formatter/checkstyle_formatter'
  config = '-c code_analyzer/configs.yml'
  formatter = '-f RuboCop::Formatter::CheckstyleFormatter'
  output = '-o code_analyzer/checkstyle-result.xml -f html -o code_analyzer/index.html'
  system "rubocop #{checklist} #{config} #{formatter} #{output}"
  puts 'Análise concluída!'
end
