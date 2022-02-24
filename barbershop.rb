require 'sinatra'

get '/' do 
  erb :index
end

post '/' do 
  @persona_barbershop = params[:persona_barbershop]
  @phone = params[:phone]
  @data_visit = params[:data_visit]

  @title = "Welcom to the our mini Barbershop!"
  @message = "Hi, my amazin frend, #{@persona_barbershop}. We glad to see you #{@data_visit}"
  erb :register_user 
end