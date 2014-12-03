class ObjectivesController < ApplicationController
  def index
    @objectives = Objective.all
  end

  def show
    @objective = Objective.find(params[:id])
  end

  def new
    @objective = Objective.new
  end

  def create
    @objective = Objective.new
    @objective.account_id = params[:account_id]
    @objective.target_portfolio_id = params[:target_portfolio_id]
    @objective.name = params[:name]
    @objective.category = params[:category]
    @objective.target_date = params[:target_date]
    @objective.target_value = params[:target_value]

    if @objective.save
      redirect_to "/objectives", :notice => "Objective created successfully."
    else
      render 'new'
    end
  end

  def edit
    @objective = Objective.find(params[:id])
  end

  def update
    @objective = Objective.find(params[:id])

    @objective.account_id = params[:account_id]
    @objective.target_portfolio_id = params[:target_portfolio_id]
    @objective.name = params[:name]
    @objective.category = params[:category]
    @objective.target_date = params[:target_date]
    @objective.target_value = params[:target_value]

    if @objective.save
      redirect_to "/objectives", :notice => "Objective updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @objective = Objective.find(params[:id])

    @objective.destroy

    redirect_to "/objectives", :notice => "Objective deleted."
  end
end
