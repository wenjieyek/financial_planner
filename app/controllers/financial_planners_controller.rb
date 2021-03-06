class FinancialPlannersController < ApplicationController
  def index
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to(financial_planner_path(@user.id))
    else
      render('index')
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.permit(:current_accounts, :saving_accounts, :fixed_deposit, :others_cash, :epf, :bonds, :insurance_cash_value, :unit_trusts,
                  :properties, :shares, :others_investment, :home, :car, :jewelleries, :others_personal_assets, :hire_purchase, :overdrafts, :credit_card_balance,
                  :others_liabilities, :personal_loans, :housing_loans, :car_loans, :investment_loans, :others_long_term_liabilities, :average_monthly_take_home_pay,
                  :business_income, :rental, :dividend, :interest_income, :others_investment_income, :pension, :annuities, :others_retirement_income, :saving,
                  :regular_investment, :children_education, :mortgage_insurance_premium, :mortgage_repayment, :personal_insurance,
                  :rental_payment, :allowances_for_parents, :allowances_for_children, :maid, :conservancy_property_taxes, :others_fixed_expenses,
                  :car_loan_repayment, :motor_insurance, :road_tax, :car_park_fees, :tolls, :petrol, :car_maintenance,
                  :public_transport, :maintenance_fees, :electricity, :water, :mobile_phone, :telephone_internet_broadband,
                  :satellite_tv, :groceries, :eating_out, :clothing_and_personal_maintenances, :health_and_medical,
                  :tour_and_family_outings, :entertainment, :hobbies_and_sports, :others_lifestyle)
  end
end
