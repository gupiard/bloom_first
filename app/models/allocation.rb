class Allocation < ActiveRecord::Base
  belongs_to :etf
  belongs_to :target_portfolio

  validates :etf,              :presence => true
  validates :target_portfolio, :presence => true
end
