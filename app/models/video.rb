class Video < ActiveRecord::Base
	# validates :title, presence: true, length: { in: 0..80 }
	# validates :description, length: { maximum: 340 }

	# Later (when added video uploading):

	# validates :rank, presence: true
	# validates :view_count, presence: true
	# validates :video_size, presence: true
	# validates :video_dimensions, presence: true
	# validates :thumbnail_path, presence: true
end
