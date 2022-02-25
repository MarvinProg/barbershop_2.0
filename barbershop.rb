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

  file_data = File.open("./public/user_date.txt", "a") do |f|
  f.write("Persona_barbershop: #{@persona_barbershop}, Phone: #{@phone}, Data_visit: #{@data_visit}\n")
  f.close
  end

  erb :register_user 
end

get '/admin' do 
  send_file './public/user_date.txt'
end


