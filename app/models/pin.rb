class Pin < ActiveRecord::Base
	belongs_to :user

	validates :descriptions, :user_id, presence: true

end
