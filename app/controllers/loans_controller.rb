class LoansController < ApplicationController
    
    def index
        loans = Loan.all
        render json: loans
    end 

    def show
        loan = Loan.find(params[:id])
        render json: loan
    end

    def create
        loan = Loan.find_or_create_by(loan_params)
        render json: loan
    end

    def update
        loan = Loan.find(params[:id])
        loan.update(loan_params)
        render json: loan
    end 

    def destroy
        loan = Loan.find(params[:id])
        loan.destroy
        render json: loan
    end

    private

    def loan_params
        params.require(:loans).permit(:user_id, :book_id, :due)
    end 
end
