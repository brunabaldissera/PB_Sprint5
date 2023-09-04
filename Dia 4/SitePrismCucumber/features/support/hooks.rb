Before do |scenario|
    puts 'Estou executando antes de cada cenário'
end

After do |scenario|
    puts 'Estou executando depois'
    puts scenario.failed?
end

After('@limpar_banco') do
    puts 'Executando depois do cenário "Carregar a página do Google - Cenário 2"'
end