class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|

      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :sex
      t.string :job_title
      t.string :phone_number
      t.string :contact_email
      t.string :country
      t.string :location
      t.text :description

      t.timestamps

    end
  end
end
