class Director < ApplicationRecord
  has_many :soaps
  belongs_to :user, :optional => true

end
