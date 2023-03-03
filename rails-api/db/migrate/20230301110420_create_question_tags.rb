class CreateQuestionTags < ActiveRecord::Migration[7.0]
  def change
    create_table :question_tags do |t|
      t.integer :question_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
