class Pin < ActiveRecord::Base
	validates :descriptions, presence: true
end
