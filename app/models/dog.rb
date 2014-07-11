class Dog < ActiveRecord::Base
  mount_uploader :image, PhotoUploader
  belongs_to :transport
end
