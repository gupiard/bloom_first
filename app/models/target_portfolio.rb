class TargetPortfolio < ActiveRecord::Base
  has_many :allocations
  has_many :objectives
  has_many :etfs, :through => :allocations

  accepts_nested_attributes_for :etfs,
    :allow_destroy => true,
    :reject_if     => :all_blank

  validates :name,      :presence => true
  validates :risk_rank, :presence => true
  # validates :pea_compatible, :presence => true
  # validates :expected_return, :presence => true
  # validates :standard_deviation, :presence => true
end
