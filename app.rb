require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
    @name
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num**2}"
  end

  get '/say/:number/:phrase' do 
    @say = ""
    params[:number].to_i.times do @say += params[:phrase] end
    @say
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    params[:word1]+" "+params[:word2]+" "+params[:word3]+" "+params[:word4]+" "+params[:word5]+"."
  end

  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @answer = ''
    case @operation
    when 'add'
      @answer = "#{@num1 + @num2}"
    when 'subtract'
      @answer = "#{@num1 - @num2}"
    when 'multiply'
      @answer = "#{@num1 * @num2}"
    when 'divide'
      @answer = "#{@num1/@num2}"
    end
    @answer
  end

end