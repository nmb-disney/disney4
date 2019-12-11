class AddAddPostalcodeToAddresses < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :add_postalcode, :string
  end
end
