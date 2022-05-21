class Pet < ApplicationRecord

 has_one_attached :avatarPets
 belongs_to :doctor
    
 validates :name, :Age, :avatarPets, :weith, :PhoneNumberOwnerPets, :OwnerPets,  :sex, :sterillized, :breed, :specie,  presence: true

end
 