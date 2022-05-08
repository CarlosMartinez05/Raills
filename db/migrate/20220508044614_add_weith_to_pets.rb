class AddWeithToPets < ActiveRecord::Migration[7.0]
  def change
    add_column :pets, :weith, :string
  end
end
