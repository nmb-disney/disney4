class AddAddFirstnameToAddresses < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :add_firstname, :string
  end
end
