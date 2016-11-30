class Feed < ActiveRecord::Base
	# validates :title, presence: true, length: { in: 0..80 }
	# validates :body, presence: true, length: { minimum: 50 }

	# Later (when added video uploading):
	
	# validates :video_path, presence: true
	# validates :rank, presence: true

	belongs_to :user

	has_attached_file :image, :styles => {:large => "1920x1200#", :medium => "960x600#", :small => "400x250#"}, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
