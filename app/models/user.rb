class User < ApplicationRecord
    validates :username, uniqueness: true, presence: true
    validates :password, on: :create, presence: true

    has_secure_password

end
