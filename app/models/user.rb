class User < ApplicationRecord
  validates :email, presence: true, confirmation: true
  validates :email_confirmation, presence: true

  validates :name, format: { with: /\A[a-zA-Z]+\z/ },
    length: { minimum: 3, maximum: 50 }
end
