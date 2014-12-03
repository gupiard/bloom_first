class Etf < ActiveRecord::Base
  has_many :allocations
  has_many :holdings
  has_many :prices

  validates :name,        :presence => true
  validates :ticker,      :presence => true
  validates :isin,        :presence => true
  validates :asset_class, :presence => true
  validates :currency,    :presence => true
  validates :manager,     :presence => true
  validates :fee,         :presence => true
end
