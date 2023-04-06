class AddAddressToContacts < ActiveRecord::Migration[7.0]
  def change
    add_column :contacts, :address, :string
  end
end
