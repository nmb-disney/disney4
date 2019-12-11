class AddAddLastnameToAddresses < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :add_lastname, :string
  end
end
