class CreateAnswerOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :answer_options do |t|
      t.integer :question_id
      t.datetime :active_from
      t.datetime :active_to

      t.timestamps
    end
  end
end
