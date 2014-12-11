class TargetPortfoliosController < ApplicationController
  def index
    @target_portfolios = TargetPortfolio.all
  end

  def show
    @target_portfolio = TargetPortfolio.find(params[:id])
  end

  def new
    @target_portfolio = TargetPortfolio.new
    @etfs = Etf.all
    # @etfs.create(Etf.all)
    # @etfs = [Etf.new,Etf.all]
  end

  def create
    @target_portfolio = TargetPortfolio.new
    @target_portfolio.risk_rank = params[:name]
    @target_portfolio.risk_rank = params[:risk_rank]
    @target_portfolio.pea_compatible = params[:pea_compatible]
    @target_portfolio.expected_return = params[:expected_return]
    @target_portfolio.standard_deviation = params[:standard_deviation]

    if @target_portfolio.save
      redirect_to "/target_portfolios", :notice => "Target portfolio created successfully."
    else
      render 'new'
    end
  end

  def edit
    @target_portfolio = TargetPortfolio.find(params[:id])
  end

  def update
    @target_portfolio = TargetPortfolio.find(params[:id])

    @target_portfolio.risk_rank = params[:name]
    @target_portfolio.risk_rank = params[:risk_rank]
    @target_portfolio.pea_compatible = params[:pea_compatible]
    @target_portfolio.expected_return = params[:expected_return]
    @target_portfolio.standard_deviation = params[:standard_deviation]

    if @target_portfolio.save
      redirect_to "/target_portfolios", :notice => "Target portfolio updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @target_portfolio = TargetPortfolio.find(params[:id])

    @target_portfolio.destroy

    redirect_to "/target_portfolios", :notice => "Target portfolio deleted."
  end
end
