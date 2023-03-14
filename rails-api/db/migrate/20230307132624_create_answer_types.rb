class CreateAnswerTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :answer_types do |t|
      t.string :answer_type
      t.string :description

      t.timestamps
    end
  end
end
