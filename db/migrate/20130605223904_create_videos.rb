class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :file_url
      t.string :file_url_tmp

      t.timestamps
    end
  end
end
