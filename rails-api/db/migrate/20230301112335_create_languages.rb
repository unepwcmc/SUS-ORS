class CreateLanguages < ActiveRecord::Migration[7.0]
  def change
    create_table :languages do |t|
      t.string :name_short
      t.string :name_long

      t.timestamps
    end
  end
end
