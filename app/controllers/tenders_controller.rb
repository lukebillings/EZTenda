class TendersController < ApplicationController

  def index
    @tenders = Tender.all
  end

  def show
    @tender = Tender.find(params[:id])
  end

  def create 
    @tender = Tender.new
    @tender.user = current_user
    if @tender.save
      redirect_to bars_path
    else
      render :new
    end
  end
end

