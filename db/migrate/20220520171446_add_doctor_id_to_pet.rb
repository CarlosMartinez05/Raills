class AddDoctorIdToPet < ActiveRecord::Migration[7.0]
  def change
    add_reference :pets, :doctor, null: false, foreign_key: true
  end
end
