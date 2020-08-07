def await(timeout = Capybara.default_max_wait_time)
  timeout.times do
    break if yield

    sleep 1
  end
rescue Selenium::WebDriver::Error::StaleElementReferenceError => exception
  puts 'Elemento avaliado não está mais na tela'
  puts exception.full_message
rescue StandardError => exception
  raise exception
end