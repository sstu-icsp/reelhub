class Video < ActiveRecord::Base
	# validates :title, presence: true, length: { in: 0..80 }
	# validates :description, length: { maximum: 340 }

	# Later (when added video uploading):

	# validates :rank, presence: true
	# validates :view_count, presence: true
	# validates :video_size, presence: true
	# validates :video_dimensions, presence: true
	# validates :thumbnail_path, presence: true

	belongs_to :user

	has_attached_file :video, :styles => {
	    :medium => { :geometry => "640x360", :format => 'flv' },
	    :thumb => { :geometry => "100x100#", :format => 'jpg', :time => 3 }
  	}, :processors => [:transcoder]

  	validates_attachment_content_type :video, :content_type => /\Avideo\/.*\Z/
  	# validates_attachment_content_type :video, content_type: /\Avideo/
	# validates_attachment_content_type :mp4_file, content_type: /.*/
	# validates_attachment_content_type :webm_file, content_type: /.*/
	# validates_attachment_content_type :ogg_file, content_type: /.*/
end
