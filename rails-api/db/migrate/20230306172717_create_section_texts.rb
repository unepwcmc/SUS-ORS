class CreateSectionTexts < ActiveRecord::Migration[7.0]
  def change
    create_table :section_texts do |t|
      t.integer :section_id
      t.integer :language_id
      t.string :heading
      t.string :text

      t.timestamps
    end
  end
end
