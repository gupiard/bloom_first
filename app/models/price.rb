class Price < ActiveRecord::Base
  belongs_to :etf

  validates :etf,         :presence => true
  validates :close_date,  :presence => true
  validates :close_price, :presence => true
end
