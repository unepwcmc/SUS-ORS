class CreateAnswerOptionTexts < ActiveRecord::Migration[7.0]
  def change
    create_table :answer_option_texts do |t|
      t.integer :option_id
      t.integer :language_id
      t.string :text
      t.string :detail
      t.string :tip

      t.timestamps
    end
  end
end
