class ListBookSerializer < ActiveModel::Serializer
    attributes :id, :list_id, :book_id

    belongs_to :list
    belongs_to :book
end 