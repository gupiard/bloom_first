module FormHelper
  def setup_target_portfolio(target_portfolio)

    (20 - target_portfolio.etfs.count).times do |i|
      target_portfolio.allocations.build
    end
    target_portfolio.allocations.sort_by! {|x| x.etf.name }

  end
end
