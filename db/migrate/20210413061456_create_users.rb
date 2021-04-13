class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.decimal :current_accounts
      t.decimal :saving_accounts
      t.decimal :fixed_deposit
      t.decimal :others

      t.decimal :epf
      t.decimal :bonds
      t.decimal :insurance_cash_value
      t.decimal :unit_trusts
      t.decimal :properties
      t.decimal :shares
      t.decimal :others

      t.decimal :home
      t.decimal :car
      t.decimal :jewelleries
      t.decimal :others

      t.decimal :hire_purchase
      t.decimal :overdrafts
      t.decimal :credit_card_balance
      t.decimal :others

      t.decimal :personal_loans
      t.decimal :housing_loans
      t.decimal :car_loans
      t.decimal :investment_loans
      t.decimal :others

      t.decimal :average_monthly_take_home_pay
      t.decimal :business_income

      t.decimal :rental
      t.decimal :dividend
      t.decimal :interest_income
      t.decimal :others

      t.decimal :pension
      t.decimal :annuities
      t.decimal :others

      t.decimal :saving
      t.decimal :regular_investment
      t.decimal :children_education
      t.decimal :mortgage_insurance_premium
      t.decimal :mortgage_repayment
      t.decimal :personal_insurance
      t.decimal :rental_payment
      t.decimal :allowances_for_parents
      t.decimal :allowances_for_children
      t.decimal :maid
      t.decimal :conservancy_property_taxes
      t.decimal :others

      t.decimal :current_accounts
      t.decimal :current_accounts
      t.decimal :current_accounts
      t.decimal :current_accounts
      t.decimal :current_accounts
      t.decimal :current_accounts
      t.decimal :current_accounts
      t.decimal :current_accounts

      t.decimal :current_accounts
      t.decimal :current_accounts
      t.decimal :current_accounts
      t.decimal :current_accounts
      t.decimal :current_accounts
      t.decimal :current_accounts

      t.decimal :current_accounts
      t.decimal :current_accounts
      t.decimal :current_accounts
      t.decimal :current_accounts

      t.decimal :current_accounts
      t.decimal :current_accounts
      t.decimal :current_accounts
      t.decimal :current_accounts

      t.timestamps
    end
  end
end
