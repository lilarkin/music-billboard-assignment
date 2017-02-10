class Song < ApplicationRecord
  validates_presence_of :title, :album

  belongs_to :artist
  
end
