require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:form)
end

get('/results') do
  @result = params.fetch('base_word').word_count(params.fetch('sentence'))
  erb(:results)
end
