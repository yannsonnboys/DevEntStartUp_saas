class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|

      t.integer :user_id
      t.string :category
      t.string :business_name
      t.string :country
      t.string :province_or_state
      t.string :city
      t.string :zip_code
      t.string :address
      t.string :phone
      t.string :email
      t.string :website
      t.text :business_description

      t.timestamps

    end
  end
end
