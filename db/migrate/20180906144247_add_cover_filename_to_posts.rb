class AddCoverFilenameToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :cover_filename, :string
  end
end
