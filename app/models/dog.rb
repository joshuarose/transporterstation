class Dog < ActiveRecord::Base
  mount_uploader :image, PhotoUploader
end
