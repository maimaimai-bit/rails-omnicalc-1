class CalculatorsController < ApplicationController
  def new_square
  end

  def square_results
    @number = params[:number].to_f
    @square = @number ** 2
  end

  def new_square_root
  end

  def square_root_results
    @number = params[:number].to_f
    @square_root = Math.sqrt(@number)
  end

  def new_payment
  end

  def payment_results
    @apr = params[:apr].to_f
    @years = params[:years].to_i
    @principal = params[:principal].to_f
    
    # Format APR as percentage with 4 decimal places
    @formatted_apr = "%.4f%" % @apr
    
    # Calculate monthly payment
    monthly_apr = @apr / 100 / 12
    @monthly_payment = (@principal * monthly_apr) / (1 - (1 + monthly_apr) ** (-@years * 12))
  end

  def new_random
  end

  def random_results
    @min = params[:min].to_i
    @max = params[:max].to_i
    @random_number = rand(@min..@max)
  end
end
