require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse!}"
  end

  get "/square/:num" do
    @num = params[:num]
    "#{@num ** 2}"
  end

end
