require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse!}"
  end

  get "/square/:number" do
    @num = params[:number].to_i
    "#{@num * @num}"
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @phrase = params[:phrase]

    display_phrase = ""
    @num.times do
      display_phrase += @phrase
    end
    display_phrase
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    words = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]]

    phrase = ""

    words.join(" ")

  end



end
