require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @reverse = params[:name].reverse
    "#{@reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @square = @num*@num
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @str = ''
    @num.times do
      @str << @phrase
    end
    @str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params.values.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    case @operation
    when 'add'
      @answer = (@number1 + @number2).to_s
    when 'subtract'
      @answer = (@number1 - @number2).to_s
    when 'multiply'
      @answer = (@number1 * @number2).to_s
    when 'divide'
      @answer = (@number1 / @number2).to_s
    end
  end
end