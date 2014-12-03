class Objective < ActiveRecord::Base
  belongs_to :account
  belongs_to :target_portfolio
  has_many :holdings

  validates :account,          :presence => true
  validates :target_portfolio, :presence => true
  validates :name,             :presence => true
  validates :category,         :presence => true
  # validates :target_date,      :presence => true (optional value)
  # validates :target_value,     :presence => true (optional value)
end
