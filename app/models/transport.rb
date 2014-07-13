class Transport < ActiveRecord::Base
  has_many :dogs
  has_many :legs
  belongs_to :organization
end
