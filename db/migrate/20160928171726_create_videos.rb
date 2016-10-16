class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.text :description
      t.integer :rank
      t.integer :view_count
      t.float :video_size
      t.string :video_dimensions
      t.string :thumbnail_path

      t.timestamps null: false
    end
  end
end
