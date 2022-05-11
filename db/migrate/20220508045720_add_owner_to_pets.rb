class AddOwnerToPets < ActiveRecord::Migration[7.0]
  def change
    add_column :pets, :OwnerPets, :string
  end
end
