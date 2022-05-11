class AddSterillizedToPets < ActiveRecord::Migration[7.0]
  def change
    add_column :pets, :sterillized, :string
  end
end
