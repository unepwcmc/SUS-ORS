class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.integer :section_id
      t.integer :user_id
      t.integer :language_id
      t.integer :value_number
      t.string :value_text
      t.integer :qualifier_id
      t.integer :option_id

      t.timestamps
    end
  end
end
