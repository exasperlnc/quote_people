class QuotesController < ApplicationController
  def index
  
  end

  def show
    @quote = Quote.find(params[:id])
  end
end