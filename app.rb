require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @str = params[:name]
    "#{str.reverse}"
  end
  
  get "/square/:number" do
    "#{params[:number].to_i*params[:number].to_i}"
  end
  
  get "/say/:number/:phrase" do
    @x = params[:number].to_i
    @s = ""
    x.times {@s += params[:phrase]}
    "#{s}"
  end

end