class Album < ApplicationRecord

	belongs_to :artist, required: false

end
