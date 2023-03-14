class CreateMeas < ActiveRecord::Migration[7.0]
  def change
    create_table :meas do |t|
      t.string :name_short
      t.string :name_long
      t.string :description
      t.string :url
      t.string :logo_url

      t.timestamps
    end
  end
end
