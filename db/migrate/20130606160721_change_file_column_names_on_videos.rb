class ChangeFileColumnNamesOnVideos < ActiveRecord::Migration
  def change
    change_table :videos do |t|
      t.rename :file_url, :file_attachment
      t.rename :file_url_tmp, :file_attachment_tmp
    end
  end
end
