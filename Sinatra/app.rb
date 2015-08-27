require 'sinatra'

class NumbersApp < Sinatra::Base
  get '/:number1/:number2' do
    params.inspect
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i 
    "Sum is #{num1 + num2}! Product is #{num1*num2}! Difference is #{num1 - num2}!"
  end  

  get '/:num1/add/:num2' do
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i
    "Sum is #{num1 + num2}"
  end

  get '/:num1/mult/:num2' do
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i
    "Product is #{num1 * num2}"
  end

  get '/:num1/minus/:num2' do
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i
    "Product is #{num1 - num2}"
  end

  get '/:num1/divide/:num2' do
    num1 = params[:num1].to_f
    num2 = params[:num2].to_f
    "Quotient is #{num1/num2}"
  end
end


excitement_level = 0
time = 30

students = ["bob", "alice", "peter"]

students.each do |student|
  excitement_level = excitement_level + 1
  puts student
end

puts excitement_level
# puts student
# puts index
















