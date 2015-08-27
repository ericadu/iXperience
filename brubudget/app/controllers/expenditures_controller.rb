class ExpendituresController < ApplicationController
  before_action :authenticate_user!

  def index
    @expenditures = current_user.expenditures.order(purchase_date: :desc)
  end

  def new
    @expenditure = current_user.expenditures.build
  end

  def create
    @expenditure = current_user.expenditures.build(expenditure_params)
    if @expenditure.save
      redirect_to user_expenditure_path(current_user, @expenditure)
    else
      redirect_to new_user_expenditure_path
    end
  end

  def show
    @expenditure = current_user.expenditures.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def expenditure_params
      params.require(:expenditure).permit(:name, :price, :quantity, :purchase_date, :image)
    end
end
