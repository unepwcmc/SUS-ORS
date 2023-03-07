class CreateSectionQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :section_questions do |t|
      t.integer :section_id
      t.integer :question_id
      t.integer :question_number
      t.boolean :mandatory
      t.integer :answer_count
      t.integer :complete_count

      t.timestamps
    end
  end
end
