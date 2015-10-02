require 'sinatra'

get '/:page.html' do |page|
  IO.read('views/layout-top.html') +
  IO.read('views/' + page + '.html') +
  IO.read('views/layout-bottom.html')
end
