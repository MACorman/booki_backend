class ListBooksController < ApplicationController

    def index
        list_books = ListBook.all
        render json: list_books
    end

    def create
        list_book = ListBook.find_or_create_by(list_book_params)
        render json: list_book
    end

    def destroy
        list_book = ListBook.find(params[:id])
        list_book.destroy
        render json: list_book
    end 

    private

    def list_book_params
        params.require(:list_book).permit(:list_id, :book_id)
    end
end
