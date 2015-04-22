require('sinatra')
require('sinatra/reloader')
require('./lib/find_and_replace')

get('/') do
 erb(:form)
end

get('/replaced') do
  @new_sentence = params.fetch('sentence').find_and_replace(params.fetch('word1'), params.fetch('word2'))
  erb(:replaced)
end
