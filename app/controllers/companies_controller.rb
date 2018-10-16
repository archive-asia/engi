class CompaniesController < ApplicationController
  before_action :set_target_company, only: %i[show edit update]

  def index
    @companies = Company.page(params[:page])
  end

  def new
    @company = Company.new
  end

  def create
    company = Company.new(company_params)
    if company.save
      flash[:notice] = "「#{company.name}」の会社を登録しました"
      redirect_to company
    else
      redirect_to :back, flash: {
        company: company,
        error_messages: company.errors.full_messages
      }
    end

  end

  def show
  end

  def edit
  end

  def update
    @company.update(company_params)
    redirect_to @company
  end
end

# def destroy
#   @company.delete
#   redirect_to companies_path, flash: { notice: "「#{@company.name}」の会社が削除されました" }
# end

private

def company_params
  params.require(:company).permit(:name, :address1, :address2, :homepage)
end

def set_target_company
    @company = Company.find(params[:id])
end
