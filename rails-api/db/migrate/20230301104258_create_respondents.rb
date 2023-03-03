class CreateRespondents < ActiveRecord::Migration[7.0]
  def change
    create_table :respondents do |t|
      t.integer :country_id
      t.integer :respondent_id
      t.integer :respondent_email

      t.timestamps
    end
  end
end
