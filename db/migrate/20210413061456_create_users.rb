class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.decimal :current_accounts, default: 0, null: false
      t.decimal :saving_accounts, default: 0, null: false
      t.decimal :fixed_deposit, default: 0, null: false
      t.decimal :others_cash, default: 0, null: false

      t.decimal :epf, default: 0, null: false
      t.decimal :bonds, default: 0, null: false
      t.decimal :insurance_cash_value, default: 0, null: false
      t.decimal :unit_trusts, default: 0, null: false
      t.decimal :properties, default: 0, null: false
      t.decimal :shares, default: 0, null: false
      t.decimal :others_investment, default: 0, null: false

      t.decimal :home, default: 0, null: false
      t.decimal :car, default: 0, null: false
      t.decimal :jewelleries, default: 0, null: false
      t.decimal :others_personal_assets, default: 0, null: false

      t.decimal :hire_purchase, default: 0, null: false
      t.decimal :overdrafts, default: 0, null: false
      t.decimal :credit_card_balance, default: 0, null: false
      t.decimal :others_liabilities, default: 0, null: false

      t.decimal :personal_loans, default: 0, null: false
      t.decimal :housing_loans, default: 0, null: false
      t.decimal :car_loans, default: 0, null: false
      t.decimal :investment_loans, default: 0, null: false
      t.decimal :others_long_term_liabilities, default: 0, null: false

      t.decimal :average_monthly_take_home_pay, default: 0, null: false
      t.decimal :business_income, default: 0, null: false

      t.decimal :rental, default: 0, null: false
      t.decimal :dividend, default: 0, null: false
      t.decimal :interest_income, default: 0, null: false
      t.decimal :others_investment_income, default: 0, null: false

      t.decimal :pension, default: 0, null: false
      t.decimal :annuities, default: 0, null: false
      t.decimal :others_retirement_income, default: 0, null: false

      t.decimal :saving, default: 0, null: false
      t.decimal :regular_investment, default: 0, null: false
      t.decimal :children_education, default: 0, null: false
      t.decimal :mortgage_insurance_premium, default: 0, null: false
      t.decimal :mortgage_repayment, default: 0, null: false
      t.decimal :personal_insurance, default: 0, null: false
      t.decimal :rental_payment, default: 0, null: false
      t.decimal :allowances_for_parents, default: 0, null: false
      t.decimal :allowances_for_children, default: 0, null: false
      t.decimal :maid, default: 0, null: false
      t.decimal :conservancy_property_taxes, default: 0, null: false
      t.decimal :others_fixed_expenses, default: 0, null: false

      t.decimal :car_loan_repayment, default: 0, null: false
      t.decimal :motor_insurance, default: 0, null: false
      t.decimal :road_tax, default: 0, null: false
      t.decimal :car_park_fees, default: 0, null: false
      t.decimal :tolls, default: 0, null: false
      t.decimal :petrol, default: 0, null: false
      t.decimal :car_maintenance, default: 0, null: false
      t.decimal :public_transport, default: 0, null: false

      t.decimal :maintenance_fees, default: 0, null: false
      t.decimal :electricity, default: 0, null: false
      t.decimal :water, default: 0, null: false
      t.decimal :mobile_phone, default: 0, null: false
      t.decimal :telephone_internet_broadband, default: 0, null: false
      t.decimal :satellite_tv, default: 0, null: false

      t.decimal :groceries, default: 0, null: false
      t.decimal :eating_out, default: 0, null: false
      t.decimal :clothing_and_personal_maintenances, default: 0, null: false
      t.decimal :health_and_medical, default: 0, null: false

      t.decimal :tour_and_family_outings, default: 0, null: false
      t.decimal :entertainment, default: 0, null: false
      t.decimal :hobbies_and_sports, default: 0, null: false
      t.decimal :others_lifestyle, default: 0, null: false

      t.timestamps
    end
  end
end
