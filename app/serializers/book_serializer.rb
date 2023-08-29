class BookSerializer < ActiveModel::Serializer
    attributes :id, :title, :author, :blurb, :cover_art

    has_many :loans
    has_many :users, through: :loans
    has_many :list_books
    has_many :lists, through: :list_books
    has_many :reviews
    has_many :reviewers, through: :reviews, source: :user
end 