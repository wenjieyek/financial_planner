# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_13_061456) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.decimal "current_accounts"
    t.decimal "saving_accounts"
    t.decimal "fixed_deposit"
    t.decimal "others"
    t.decimal "epf"
    t.decimal "bonds"
    t.decimal "insurance_cash_value"
    t.decimal "unit_trusts"
    t.decimal "properties"
    t.decimal "shares"
    t.decimal "home"
    t.decimal "car"
    t.decimal "jewelleries"
    t.decimal "hire_purchase"
    t.decimal "overdrafts"
    t.decimal "credit_card_balance"
    t.decimal "personal_loans"
    t.decimal "housing_loans"
    t.decimal "car_loans"
    t.decimal "investment_loans"
    t.decimal "average_monthly_take_home_pay"
    t.decimal "business_income"
    t.decimal "rental"
    t.decimal "dividend"
    t.decimal "interest_income"
    t.decimal "pension"
    t.decimal "annuities"
    t.decimal "saving"
    t.decimal "regular_investment"
    t.decimal "children_education"
    t.decimal "mortgage_insurance_premium"
    t.decimal "mortgage_repayment"
    t.decimal "personal_insurance"
    t.decimal "rental_payment"
    t.decimal "allowances_for_parents"
    t.decimal "allowances_for_children"
    t.decimal "maid"
    t.decimal "conservancy_property_taxes"
    t.decimal "car_loan_repayment"
    t.decimal "motor_insurance"
    t.decimal "road_tax"
    t.decimal "car_park_fees"
    t.decimal "tolls"
    t.decimal "petrol"
    t.decimal "car_maintenance"
    t.decimal "public_transport"
    t.decimal "maintenance_fees"
    t.decimal "electricity"
    t.decimal "water"
    t.decimal "mobile_phone"
    t.decimal "telephone_internet_broadband"
    t.decimal "satellite_tv"
    t.decimal "groceries"
    t.decimal "eating_out"
    t.decimal "clothing_and_personal_maintenances"
    t.decimal "health_and_medical"
    t.decimal "tour_and_family_outings"
    t.decimal "entertainment"
    t.decimal "hobbies_and_sports"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
