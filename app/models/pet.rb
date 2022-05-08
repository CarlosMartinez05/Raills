class Pet < ApplicationRecord

 has_one_attached :avatarPets

    
 validates :name, :Age, :avatarPets, :weith, :PhoneNumberOwnerPets, :OwnerPets,  presence: true

end
