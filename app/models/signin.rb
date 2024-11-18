class Signin < ApplicationRecord
    include ActiveModel::SecurePassword
    has_secure_password

    validates :email, presence: true

    validates_format_of :email,  with: /\A[^@\s]+@[^@\s]+\z/, message: "Must be a valid email address"
    validates :password, presence: true
end
