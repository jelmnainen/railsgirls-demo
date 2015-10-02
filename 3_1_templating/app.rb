require 'sinatra'

get '/:page' do |page|
  "stuff before" + IO.read('public/' + page + '.html') + "stuff after"
end
