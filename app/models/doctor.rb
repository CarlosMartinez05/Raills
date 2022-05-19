class Doctor < ApplicationRecord

    has_one_attached :avatarDr
    
    belongs_to :user
    
    validates :name, :email, :Age, :avatarDr, presence: true

end
