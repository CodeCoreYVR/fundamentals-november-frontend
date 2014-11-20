require "sinatra"
require "pony"

# get -> HTTP verb
# "/" -> URL
get "/" do
  erb :index, layout: :default
end

get '/page-1' do
  erb :page_1, layout: :default
end

post '/page-2' do
  @total = 0

  if params[:q1] == 'y'
    @total = @total + 1
  end

  if params[:q2] == 'y'
    @total = @total + 1
  end

  erb :page_2, layout: :default, locals: {total: @total}
end

post '/page-3' do
  @total = params[:total_so_far]

  erb :page_3, layout: :default, locals: {total: @total}
end

get "/contact" do
  erb :contact, layout: :default
end

post "/greetings" do
  "Hello #{params[:name]}"
end

post "/contact" do
  if params[:value] =~ /remove from newsletter/
    # Remove from newsletter
  else
    # Whatever
  end

  Pony.mail(to: "tam@codecore.ca",
            from: params[:email],
            reply_to: params[:email],
            subject: "#{params[:name]} contacted you!",
            body: params[:message],
            via: :smtp,
            via_options: {
              address: "smtp.gmail.com",
              port: "587",
              user_name: "#{ENV[user_name]}",
              password: "#{ENV[password]}",
              authentication: :plain,
              enable_starttls_auto: true
            })
  params.to_s
end

get "/hi" do
  "Hi There"
end

