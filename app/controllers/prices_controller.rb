class PricesController < ApplicationController
  def index
    @prices = Price.all
  end

  def show
    @price = Price.find(params[:id])
  end

  def new
    @price = Price.new
  end

  def create
    @price = Price.new
    @price.etf_id = params[:etf_id]
    @price.close_date = params[:close_date]
    @price.close_price = params[:close_price]

    if @price.save
      redirect_to "/prices", :notice => "Price created successfully."
    else
      render 'new'
    end
  end

  def edit
    @price = Price.find(params[:id])
  end

  def update
    @price = Price.find(params[:id])

    @price.etf_id = params[:etf_id]
    @price.close_date = params[:close_date]
    @price.close_price = params[:close_price]

    if @price.save
      redirect_to "/prices", :notice => "Price updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @price = Price.find(params[:id])

    @price.destroy

    redirect_to "/prices", :notice => "Price deleted."
  end
end
