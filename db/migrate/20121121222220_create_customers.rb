class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :fullname
      t.string :address
      t.string :city
      t.string :province
      t.string :country
      t.string :postal_code
      t.string :email

      t.timestamps
    end
  end
end
