class CreateInvestors < ActiveRecord::Migration[6.0]
  def change
    create_table :investors do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.datetime :date_of_birth
      t.integer :phone_number
      t.string :street_address
      t.string :state
      t.integer :zip_code

      t.timestamps
    end
  end
end
