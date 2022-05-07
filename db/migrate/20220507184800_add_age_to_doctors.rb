class AddAgeToDoctors < ActiveRecord::Migration[7.0]
  def change
    add_column :doctors, :Age, :integer
  end
end
