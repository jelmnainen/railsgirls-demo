require 'sinatra'

get '/' do
    erb :index, :locals => {
        :title => 'Johannes\' Rails Girls page'
    }
end

get '/pictures.html' do
    picture_urls = Dir.glob('public/pictures/**').map { |path| path.sub('public', '') }
    erb :pictures, :locals => {
        :picture_urls   => picture_urls,
        :title          => 'CAAAAAAATS'
    }
end

get '/:page.html' do |page|
    erb page.to_sym
end
