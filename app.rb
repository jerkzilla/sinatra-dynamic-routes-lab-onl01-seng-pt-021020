require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    (params[:number].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    say_phrase = " "
    params[:number].to_i.times do
      say_phrase += params[:phrase]
    end
    say_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
     "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    answer = " "
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]
    case @operation
    when "add"
      "#{@number1 + @number2}"

    when "subtract"
      "#{@number2 - @number1}"

    when "multiply"
      "#{@number1 * @number2}"

    when "divide"
      "#{@number1 / @number2}"
    end
  end

end
