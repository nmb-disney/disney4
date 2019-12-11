class AddIndexToCd < ActiveRecord::Migration[5.2]
  def change
  	add_index :cds, :cd_title
  end
end
