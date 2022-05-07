class Doctor < ApplicationRecord

validates :name, :email, :Age, presence: true

end
