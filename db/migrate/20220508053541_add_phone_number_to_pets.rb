class AddPhoneNumberToPets < ActiveRecord::Migration[7.0]
  def change
    add_column :pets, :PhoneNumberOwnerPets, :string
  end
end
