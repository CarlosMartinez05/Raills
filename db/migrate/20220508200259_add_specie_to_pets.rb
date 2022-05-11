class AddSpecieToPets < ActiveRecord::Migration[7.0]
  def change
    add_column :pets, :specie, :string
  end
end
