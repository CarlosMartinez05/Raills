class Doctor < ApplicationRecord

    has_one_attached :avatarDr
    
    belongs_to :user
    has_many :pets
    validates :name, :email, :Age, :avatarDr, presence: true

end
