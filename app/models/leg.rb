class Leg < ActiveRecord::Base
  geocoded_by :full_address
  after_validation :geocode
  belongs_to :transport
  belongs_to :user

  def full_address
    "#{self.address}, #{self.city} #{self.state} #{self.zip}"
  end
end
