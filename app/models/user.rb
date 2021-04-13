# == Schema Information
#
# Table name: users
#
#  id                                 :bigint           not null, primary key
#  allowances_for_children            :decimal(, )      default(0.0), not null
#  allowances_for_parents             :decimal(, )      default(0.0), not null
#  annuities                          :decimal(, )      default(0.0), not null
#  average_monthly_take_home_pay      :decimal(, )      default(0.0), not null
#  bonds                              :decimal(, )      default(0.0), not null
#  business_income                    :decimal(, )      default(0.0), not null
#  car                                :decimal(, )      default(0.0), not null
#  car_loan_repayment                 :decimal(, )      default(0.0), not null
#  car_loans                          :decimal(, )      default(0.0), not null
#  car_maintenance                    :decimal(, )      default(0.0), not null
#  car_park_fees                      :decimal(, )      default(0.0), not null
#  children_education                 :decimal(, )      default(0.0), not null
#  clothing_and_personal_maintenances :decimal(, )      default(0.0), not null
#  conservancy_property_taxes         :decimal(, )      default(0.0), not null
#  credit_card_balance                :decimal(, )      default(0.0), not null
#  current_accounts                   :decimal(, )      default(0.0), not null
#  dividend                           :decimal(, )      default(0.0), not null
#  eating_out                         :decimal(, )      default(0.0), not null
#  electricity                        :decimal(, )      default(0.0), not null
#  entertainment                      :decimal(, )      default(0.0), not null
#  epf                                :decimal(, )      default(0.0), not null
#  fixed_deposit                      :decimal(, )      default(0.0), not null
#  groceries                          :decimal(, )      default(0.0), not null
#  health_and_medical                 :decimal(, )      default(0.0), not null
#  hire_purchase                      :decimal(, )      default(0.0), not null
#  hobbies_and_sports                 :decimal(, )      default(0.0), not null
#  home                               :decimal(, )      default(0.0), not null
#  housing_loans                      :decimal(, )      default(0.0), not null
#  insurance_cash_value               :decimal(, )      default(0.0), not null
#  interest_income                    :decimal(, )      default(0.0), not null
#  investment_loans                   :decimal(, )      default(0.0), not null
#  jewelleries                        :decimal(, )      default(0.0), not null
#  maid                               :decimal(, )      default(0.0), not null
#  maintenance_fees                   :decimal(, )      default(0.0), not null
#  mobile_phone                       :decimal(, )      default(0.0), not null
#  mortgage_insurance_premium         :decimal(, )      default(0.0), not null
#  mortgage_repayment                 :decimal(, )      default(0.0), not null
#  motor_insurance                    :decimal(, )      default(0.0), not null
#  others_cash                        :decimal(, )      default(0.0), not null
#  others_fixed_expenses              :decimal(, )      default(0.0), not null
#  others_investment                  :decimal(, )      default(0.0), not null
#  others_investment_income           :decimal(, )      default(0.0), not null
#  others_liabilities                 :decimal(, )      default(0.0), not null
#  others_lifestyle                   :decimal(, )      default(0.0), not null
#  others_long_term_liabilities       :decimal(, )      default(0.0), not null
#  others_personal_assets             :decimal(, )      default(0.0), not null
#  others_retirement_income           :decimal(, )      default(0.0), not null
#  overdrafts                         :decimal(, )      default(0.0), not null
#  pension                            :decimal(, )      default(0.0), not null
#  personal_insurance                 :decimal(, )      default(0.0), not null
#  personal_loans                     :decimal(, )      default(0.0), not null
#  petrol                             :decimal(, )      default(0.0), not null
#  properties                         :decimal(, )      default(0.0), not null
#  public_transport                   :decimal(, )      default(0.0), not null
#  regular_investment                 :decimal(, )      default(0.0), not null
#  rental                             :decimal(, )      default(0.0), not null
#  rental_payment                     :decimal(, )      default(0.0), not null
#  road_tax                           :decimal(, )      default(0.0), not null
#  satellite_tv                       :decimal(, )      default(0.0), not null
#  saving                             :decimal(, )      default(0.0), not null
#  saving_accounts                    :decimal(, )      default(0.0), not null
#  shares                             :decimal(, )      default(0.0), not null
#  telephone_internet_broadband       :decimal(, )      default(0.0), not null
#  tolls                              :decimal(, )      default(0.0), not null
#  tour_and_family_outings            :decimal(, )      default(0.0), not null
#  unit_trusts                        :decimal(, )      default(0.0), not null
#  water                              :decimal(, )      default(0.0), not null
#  created_at                         :datetime         not null
#  updated_at                         :datetime         not null
#
class User < ApplicationRecord
  def liquidity_ratio
    (total_cash / total_outflow) * 100
  end

  def liquidity_assets_to_net_worth_ratio
    (total_cash / net_worth) * 100
  end

  def solvency_ratio
    (total_inflow / total_liabilities) * 100
  end

  def debt_to_asset_ratio
    (total_assets / total_liabilities) * 100
  end

  def saving_ratio
    (saving / total_inflow) * 100
  end

  def debt_service_ratio
    ((mortgage_repayment + car_loans + personal_insurance + mortgage_insurance_premium) / total_inflow) * 100
  end

  def non_mortgage_debt_service_ratio
    ((car_loans + personal_insurance) / total_inflow) * 100
  end

  def net_investment_assets_to_net_worth_ratio
    (total_investment / net_worth) * 100
  end

  private

  def total_cash
    current_accounts + saving_accounts + fixed_deposit + others_cash
  end

  def total_investment
    epf + bonds + insurance_cash_value + unit_trusts + properties + shares + others_investment
  end

  def total_personal_assets
    home + car + jewelleries + others_personal_assets
  end

  def total_assets
    total_cash + total_investment + total_personal_assets
  end

  def total_inflow
    average_monthly_take_home_pay + business_income + rental + dividend + interest_income + others_investment_income + pension + annuities + others_retirement_income
  end

  def total_outflow
    saving + regular_investment + children_education + mortgage_insurance_premium + mortgage_repayment + personal_insurance +
    rental_payment + allowances_for_parents + allowances_for_children + maid + conservancy_property_taxes + others_fixed_expenses + car_loan_repayment +
    motor_insurance + road_tax + car_park_fees + tolls + petrol + car_maintenance + public_transport + maintenance_fees + electricity + water +
    mobile_phone + telephone_internet_broadband + satellite_tv + groceries + eating_out + clothing_and_personal_maintenances + health_and_medical +
    tour_and_family_outings + entertainment + hobbies_and_sports + others_lifestyle
  end

  def total_liabilities
    hire_purchase + overdrafts + credit_card_balance + others_liabilities + personal_loans + housing_loans + car_loans + investment_loans + others_long_term_liabilities
  end

  def net_worth
    total_assets - total_liabilities
  end
end
