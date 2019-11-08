require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/" do
    
    erb :user_input
  end 
  
  post "/piglatinize" do 
    input = params[:user_phrase]
    phrase = Piglatinizer.new
    @pig_latinize = piglatinize(input)
    
    erb :pig_latinizer
   
  end
end