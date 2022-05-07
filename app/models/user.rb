class User < ApplicationRecord
    has_secure_password

    validates :email, :name, :password, :password_digest, presence: true

end
