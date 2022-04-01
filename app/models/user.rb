class User < ApplicationRecord
  validates :email, presence: true, confirmation: true
  validates :email_confirmation, presence: true

  validates :name, format: { with: /\A[a-zA-Z]+\z/ },
    length: { minimum: 3, maximum: 50 }

  has_many :emails
  has_and_belongs_to_many :colors
  has_many :orders
  has_many :products, through: :orders
  has_many :comments, as: :commentable
end
