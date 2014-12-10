class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :accounts

  validates :email,             :presence => true, :uniqueness => true
  validates :terms_of_service,  :acceptance => true
  validates :first_name,        :presence => true
  validates :last_name,         :presence => true
  validates :dob,               :presence => true
  validates :phone,             :presence => true
  # validates :appartment,        :presence => true
  # validates :residence,         :presence => true
  validates :street,            :presence => true
  # validates :county,            :presence => true
  validates :post_code,         :presence => true, :numericality => true
  validates :city,              :presence => true
  validates :employment_status, :presence => true
  validates :annual_income,     :presence => true, :numericality => true
  validates :net_worth,         :presence => true, :numericality => true
end
