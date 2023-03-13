class CreateQualifierOptionTexts < ActiveRecord::Migration[7.0]
  def change
    create_table :qualifier_option_texts do |t|
      t.integer :option_id
      t.integer :language_id
      t.string :title
      t.string :detail
      t.string :tip

      t.timestamps
    end
  end
end
