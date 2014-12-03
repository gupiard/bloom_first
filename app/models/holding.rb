class Holding < ActiveRecord::Base
  belongs_to :etf
  belongs_to :objective

  validates :etf,       :presence => true
  validates :objective, :presence => true
  validates :shares,    :presence => true
end
