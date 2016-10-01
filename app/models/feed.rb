class Feed < ActiveRecord::Base
	validates :title, presence: true, length: { in: 0..80 }
	validates :body, presence: true, length: { minimum: 50 }

	# Later (when added video uploading):
	
	# validates :video_path, presence: true
	# validates :rank, presence: true
end
