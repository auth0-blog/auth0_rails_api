class Chirp < ApplicationRecord
  validates_presence_of :body, :published
end
