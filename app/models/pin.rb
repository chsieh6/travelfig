class Pin < ActiveRecord::Base
	belongs_to :user
	has_many :photos, :dependent => :destroy
	has_one :diary, :dependent => :destroy

	accepts_nested_attributes_for :diary, :photos

	has_attached_file :cover, :styles => { :medium => "320x240>" }

	validates :city, :country, :category, :user_id, presence: true
	validates_attachment :cover, presence: true, 
															 content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']}, 
															 size: { less_than: 5.megabytes}

	def cover_remote_url=(url_value)
		self.cover = URI.parse(url_value) unless url_value.blank?
		super
	end

end
