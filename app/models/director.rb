class Director < ApplicationRecord
  has_many :soaps
  belongs_to :user, :optional => true
  validates :first_name, :presence =>true
  validates :last_name, :presence =>true
end
