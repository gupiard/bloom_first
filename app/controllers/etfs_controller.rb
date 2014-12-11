class EtfsController < ApplicationController
  def index
    @etfs = Etf.all
  end

  def show
    @etf = Etf.find(params[:id])
  end

  def new
    @etf = Etf.new
  end

  def create
    @etf = Etf.new(etf_params)
    # @etf.name = params[:name]
    # @etf.ticker = params[:ticker]
    # @etf.isin = params[:isin]
    # @etf.asset_class = params[:asset_class]
    # @etf.currency = params[:currency]
    # @etf.manager = params[:manager]
    # @etf.fee = params[:fee]

    if @etf.save
      redirect_to "/etfs", :notice => "Etf created successfully."
    else
      render 'new'
    end
  end


  def edit
    @etf = Etf.find(params[:id])
  end

  def update
    @etf = Etf.find(params[:id])
    @etf.update(etf_params)
    # @etf.name = params[:name]
    # @etf.ticker = params[:ticker]
    # @etf.isin = params[:isin]
    # @etf.asset_class = params[:asset_class]
    # @etf.currency = params[:currency]
    # @etf.manager = params[:manager]
    # @etf.fee = params[:fee]

    if @etf.save
      redirect_to "/etfs", :notice => "Etf updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @etf = Etf.find(params[:id])

    @etf.destroy

    redirect_to "/etfs", :notice => "Etf deleted."
  end

  def etf_params
    params.required(:etf).permit(:name, :ticker, :isin, :asset_class, :currency, :manager, :fee)
  end
end
