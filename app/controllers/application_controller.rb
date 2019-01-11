class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  
  get '/' do
    erb :index
  end

  
  get '/recipes' do
      @recipe = Recipe.create(name => params[:name], ingredients =>[:ingredients], cook_time => params[:cook_time])
  end
end