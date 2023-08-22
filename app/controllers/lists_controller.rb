class ListsController < ApplicationController

    def index
        lists = List.all
        render json: lists
    end

    def show
        list = List.find(params[:id])
        render json: list
    end

    def create
        list = List.find_or_create_by(list_params)
        render json: list
    end

    def update
        list = List.find(params[:id])
        list.update(list_params)
        render json: list
    end

    def destroy
        list = List.find(params[:id])
        list.destroy
        render json: list
    end

    private

    def list_params
        params.require(:list).permit(:user_id, :title)
    end
end
