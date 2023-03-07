class CreateQuestionnaireSections < ActiveRecord::Migration[7.0]
  def change
    create_table :questionnaire_sections do |t|
      t.integer :parent_id
      t.integer :questionnaire_id
      t.integer :section_number

      t.timestamps
    end
  end
end
