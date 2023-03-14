class CreateMeaAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :mea_admins do |t|
      t.integer :mea_id 
      t.integer :user_id

      t.timestamps
    end
  end
end
