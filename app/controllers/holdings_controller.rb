class HoldingsController < ApplicationController
  def index
    @holdings = Holding.all
  end

  def show
    @holding = Holding.find(params[:id])
  end

  def new
    @holding = Holding.new
  end

  def create
    @holding = Holding.new
    @holding.objective_id = params[:objective_id]
    @holding.etf_id = params[:etf_id]
    @holding.shares = params[:shares]

    if @holding.save
      redirect_to "/holdings", :notice => "Holding created successfully."
    else
      render 'new'
    end
  end

  def edit
    @holding = Holding.find(params[:id])
  end

  def update
    @holding = Holding.find(params[:id])

    @holding.objective_id = params[:objective_id]
    @holding.etf_id = params[:etf_id]
    @holding.shares = params[:shares]

    if @holding.save
      redirect_to "/holdings", :notice => "Holding updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @holding = Holding.find(params[:id])

    @holding.destroy

    redirect_to "/holdings", :notice => "Holding deleted."
  end
end
