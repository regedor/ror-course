require 'rubygems'
require 'sinatra'
require 'haml'
use_in_file_templates!

get '/' do
  haml :index
end

post '/' do
  @result = `echo #{params[:texto]} | bc`
  haml :resultado
end

__END__

@@ layout
!!!
%html{ :xmlns => "http://www.w3.org/1999/xhtml", :lang => "en", "xml:lang" => "en"}
  %head
    %title= "Calculadora"
    %meta{"http-equiv" => "Content-Type", :content => "text/html; charset=utf-8"}
    %style{:type => "text/css"}
      body { background-color: #ccf; color: #666; text-align: left; font-family: arial, sans-serif; font-size: 62.5%; }
      body > p {  text-align:center; }
      h1 { color: #f00; margin-bottom: 1em; font-size: 1.5em; }
      /#wrapper { width: 400px; margin: 80px auto; background-color: #fff; border: 1px solid #666; }
      /#wrapper { padding: 0 1em; font-size: 1.2em; }
  %body
    #wrapper
      %h1 Calculadora
      %form{:method => 'POST', :action => @request.script_name + "/"}
        %p
          %input{:name => 'texto'} 
          %input.submit{:type => :submit, :value => "Calcula"}
      #content= yield
    %p
      <span xmlns:dc="http://purl.org/dc/elements/1.1/" href="http://purl.org/dc/dcmitype/InteractiveResource" property="dc:title" rel="dc:type">Calculadora</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="http://regedor.com/" property="cc:attributionName" rel="cc:attributionURL">Miguel Regedor</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/2.5/pt/">Creative Commons Attribution-Share Alike 2.5 Portugal License</a>.<br />Based on a work at <a xmlns:dc="http://purl.org/dc/elements/1.1/" href="http://github.com/regedor/Sinatra--Calculadora" rel="dc:source">github.com</a>.
	
@@ index
%p Esta calculadora é bestial! 
%p Faça uma contas! E tenha um dia agadável!

@@ resultado
%p= "Resultado: " + @result
