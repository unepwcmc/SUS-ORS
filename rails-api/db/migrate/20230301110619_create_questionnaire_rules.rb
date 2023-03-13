class CreateQuestionnaireRules < ActiveRecord::Migration[7.0]
  def change
    create_table :questionnaire_rules do |t|
      t.integer :questionnaire_id
      t.integer :section_id
      t.integer :section_question_id
      t.integer :respondent_id
      t.integer :collaborator_id
      t.string :rule, limit: 10

      t.timestamps
    end
  end
end
