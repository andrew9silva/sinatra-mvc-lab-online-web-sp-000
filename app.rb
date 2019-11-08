require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/" do
    
    erb :user_input
  end 
  
  post "/piglatinize" do 
    
    input = params[:user_phrase]
    word = Piglatinizer.new
    word.piglatinze(input)
    
    erb :pig_latinizer
  end
end