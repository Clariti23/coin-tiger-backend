class User < ApplicationRecord
    has_many :favorites
    has_many :baskets
    has_secure_password

    
end
