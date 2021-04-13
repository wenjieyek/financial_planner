# == Schema Information
#
# Table name: users
#
#  id                                 :bigint           not null, primary key
#  allowances_for_children            :decimal(, )
#  allowances_for_parents             :decimal(, )
#  annuities                          :decimal(, )
#  average_monthly_take_home_pay      :decimal(, )
#  bonds                              :decimal(, )
#  business_income                    :decimal(, )
#  car                                :decimal(, )
#  car_loan_repayment                 :decimal(, )
#  car_loans                          :decimal(, )
#  car_maintenance                    :decimal(, )
#  car_park_fees                      :decimal(, )
#  children_education                 :decimal(, )
#  clothing_and_personal_maintenances :decimal(, )
#  conservancy_property_taxes         :decimal(, )
#  credit_card_balance                :decimal(, )
#  current_accounts                   :decimal(, )
#  dividend                           :decimal(, )
#  eating_out                         :decimal(, )
#  electricity                        :decimal(, )
#  entertainment                      :decimal(, )
#  epf                                :decimal(, )
#  fixed_deposit                      :decimal(, )
#  groceries                          :decimal(, )
#  health_and_medical                 :decimal(, )
#  hire_purchase                      :decimal(, )
#  hobbies_and_sports                 :decimal(, )
#  home                               :decimal(, )
#  housing_loans                      :decimal(, )
#  insurance_cash_value               :decimal(, )
#  interest_income                    :decimal(, )
#  investment_loans                   :decimal(, )
#  jewelleries                        :decimal(, )
#  maid                               :decimal(, )
#  maintenance_fees                   :decimal(, )
#  mobile_phone                       :decimal(, )
#  mortgage_insurance_premium         :decimal(, )
#  mortgage_repayment                 :decimal(, )
#  motor_insurance                    :decimal(, )
#  others                             :decimal(, )
#  overdrafts                         :decimal(, )
#  pension                            :decimal(, )
#  personal_insurance                 :decimal(, )
#  personal_loans                     :decimal(, )
#  petrol                             :decimal(, )
#  properties                         :decimal(, )
#  public_transport                   :decimal(, )
#  regular_investment                 :decimal(, )
#  rental                             :decimal(, )
#  rental_payment                     :decimal(, )
#  road_tax                           :decimal(, )
#  satellite_tv                       :decimal(, )
#  saving                             :decimal(, )
#  saving_accounts                    :decimal(, )
#  shares                             :decimal(, )
#  telephone_internet_broadband       :decimal(, )
#  tolls                              :decimal(, )
#  tour_and_family_outings            :decimal(, )
#  unit_trusts                        :decimal(, )
#  water                              :decimal(, )
#  created_at                         :datetime         not null
#  updated_at                         :datetime         not null
#
class User < ApplicationRecord
  def total_cash
    current_accounts + saving_accounts + fixed_deposit + others
  end

  def total_assets
    total_cash + epf + bonds + insurance_cash_value + unit_trusts + properties + shares + others
  end

  def total_outflow
    saving + regular_investment + children_education + mortgage_insurance_premium + mortgage_repayment + personal_insurance +
    rental_payment + allowances_for_parents + allowances_for_children + maid + conservancy_property_taxes + others + car_loan_repayment +
    motor_insurance + road_tax + car_park_fees + tolls + petrol + car_maintenance + public_transport + maintenance_fees + electricity + water +
    mobile_phone + telephone_internet_broadband + satellite_tv + groceries + eating_out + clothing_and_personal_maintenances + health_and_medical +
    tour_and_family_outings + entertainment + hobbies_and_sports + others
  end

  def total_liabilities
    hire_purchase + overdrafts + credit_card_balance + others + personal_loans + housing_loans + car_loans + investment_loans + others
  end

  def net_worth
    total_assets - total_liabilities
  end

  def liquidity_ratio
    total_cash / total_outflow
  end

  def liquidity_assets_to_net_worth_ratio
    total_cash / net_worth
  end

  def solvency_ratio
    100
  end

  def debt_to_asset_ratio
    total_assets / total_liabilities
  end

  def saving_ratio
    average_monthly_take_home_pay 
  end

  def debt_service_ratio
    6
  end

  def non_mortgage_debt_service_ratio
    7
  end

  def net_investment_assets_to_net_worth_ratio
    8
  end
end
