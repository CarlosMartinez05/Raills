class Doctor < ApplicationRecord

    has_one_attached :avatarDr

    
    validates :name, :email, :Age, :avatarDr, presence: true

end
