class SiteController < ApplicationController

  def home
    render 'home', layout: 'landing'
  end

  def contact
  end

  def say_name
    @name = params[:name]
    render 'say_name'
  end

  def calculator
    render 'calculator'
  end

  def calculate
    @num1 = params[:number][:first_num].to_i
    @num2 = params[:number][:second_num].to_i
    @result = @num1 + @num2
    render 'calculate'
  end

end
