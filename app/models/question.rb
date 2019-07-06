class Question < ApplicationRecord
  mount_uploader :picture, PictureUploader
  has_many :answers
end
