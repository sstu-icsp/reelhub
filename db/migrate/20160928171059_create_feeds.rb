class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.string :title
      t.text :body
      t.string :video_path
      t.integer :rank

      t.timestamps null: false
    end
  end
end
