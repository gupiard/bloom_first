class TargetPortfolio < ActiveRecord::Base
  has_many :allocations
  has_many :objectives

  validates :name,      :presence => true
  validates :risk_rank, :presence => true
  # validates :pea_compatible, :presence => true
  # validates :expected_return, :presence => true
  # validates :standard_deviation, :presence => true
end
