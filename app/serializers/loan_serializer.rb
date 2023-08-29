class LoanSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :book_id, :due

    belongs_to :user
    belongs_to :book
end 