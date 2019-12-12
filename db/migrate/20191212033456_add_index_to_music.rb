class AddIndexToMusic < ActiveRecord::Migration[5.2]
  def change
  	add_index :musics, :music_title
  end
end
