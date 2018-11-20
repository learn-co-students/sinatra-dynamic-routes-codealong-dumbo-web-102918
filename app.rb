require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get '/goodbye/:name' do
    @u_name = params[:name]
    "Goodbye, #{@u_name}."
  end

#Below code works when numbers are entered as below on the url:
# /multiple/2and3
  # get '/multiple/:nums' do
  #   numbers_str = params[:nums].split("and")
  #   numbers_int = numbers_str.map{|num|num.strip.to_i}
  #   numbers_int.reduce(:*)
  # end

  get '/multiply/:num1/:num2' do
    # binding.pry
    @product = params[:num1].to_i * params[:num2].to_i
    @product.to_s
  end

end
