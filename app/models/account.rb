class Account < ActiveRecord::Base
  belongs_to :user
  has_many   :objectives

  validates :user,     :presence => true
  validates :category, :presence => true
end
