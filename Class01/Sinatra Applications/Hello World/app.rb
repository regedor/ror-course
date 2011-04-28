require 'rubygems'
require 'sinatra'

get '/hi/:nome' do
  "Bem vindo " + params[:nome]
end

__END__


