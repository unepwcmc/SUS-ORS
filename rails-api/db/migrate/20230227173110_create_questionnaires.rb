class CreateQuestionnaires < ActiveRecord::Migration[7.0]
  def change
    create_table :questionnaires do |t|
      t.string :title
      t.string :version
      t.boolean :active
      t.integer :mea_id
      t.integer :status_id
      t.integer :num_responses
      t.boolean :is_template

      t.timestamps
    end
  end
end
