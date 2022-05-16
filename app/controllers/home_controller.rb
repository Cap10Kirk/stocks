class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: 'pk_c3a730608a054aff94fe12d09510db06')
    if params[:ticker] == ""
      @nothing = "Hey! You forgot to enter a symbol."
    elsif params[:ticker]  
        @stock = StockQuote::Stock.quote(params[:ticker]) 
        if !@stock
            @error = "Hey! That stock doesn't exist. Please try again."
        end   
    end   
  end

  def about
  end  
end
