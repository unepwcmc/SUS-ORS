class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.integer :mea_id
      t.integer :created_by
      t.integer :language_id
      t.integer :answer_type_id
      t.integer :answer_unit_id
      t.boolean :allow_other

      t.timestamps
    end
  end
end
