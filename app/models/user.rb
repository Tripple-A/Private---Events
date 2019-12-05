class User < ApplicationRecord
    validates :password_digest, presence: true, length: { minimum: 6 } , allow_nil: true
    validates :name , presence: :true
    validates :email , presence: :true

    has_many :events, foreign_key: 'user_id'
end
