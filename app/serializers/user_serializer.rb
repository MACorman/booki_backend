class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :email

    has_many :loans
    has_many :books, through: :loans
    has_many :reviews
    has_many :reviewed_books, through: :reviews, source: :book
    has_many :lists
end 