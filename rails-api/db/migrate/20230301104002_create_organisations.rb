class CreateOrganisations < ActiveRecord::Migration[7.0]
  def change
    create_table :organisations do |t|
      t.string :name_short
      t.string :name_long
      t.string :url
      t.timestamps
    end
  end
end
