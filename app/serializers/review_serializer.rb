class ReviewSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :book_id, :title, :body, :stars

    belongs_to :user
    belongs_to :book
end 