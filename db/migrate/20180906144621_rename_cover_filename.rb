class RenameCoverFilename < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :cover_filename, :cover 
  end
end
