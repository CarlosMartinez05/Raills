class User < ApplicationRecord
    has_secure_password
    has_many :doctors
    validates :email, :name, :password, :password_digest, presence: true

end
