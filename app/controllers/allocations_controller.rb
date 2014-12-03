class AllocationsController < ApplicationController
  def index
    @allocations = Allocation.all
  end

  def show
    @allocation = Allocation.find(params[:id])
  end

  def new
    @allocation = Allocation.new
  end

  def create
    @allocation = Allocation.new
    @allocation.target_portfolio_id = params[:target_portfolio_id]
    @allocation.etf_id = params[:etf_id]
    @allocation.weight = params[:weight]

    if @allocation.save
      redirect_to "/allocations", :notice => "Allocation created successfully."
    else
      render 'new'
    end
  end

  def edit
    @allocation = Allocation.find(params[:id])
  end

  def update
    @allocation = Allocation.find(params[:id])

    @allocation.target_portfolio_id = params[:target_portfolio_id]
    @allocation.etf_id = params[:etf_id]
    @allocation.weight = params[:weight]

    if @allocation.save
      redirect_to "/allocations", :notice => "Allocation updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @allocation = Allocation.find(params[:id])

    @allocation.destroy

    redirect_to "/allocations", :notice => "Allocation deleted."
  end
end
