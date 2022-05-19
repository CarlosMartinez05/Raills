class User < ApplicationRecord
    has_secure_password
    has_many :doctor
    validates :email, :name, :password, :password_digest, presence: true

end
