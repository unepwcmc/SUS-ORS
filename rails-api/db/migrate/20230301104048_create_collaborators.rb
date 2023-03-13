class CreateCollaborators < ActiveRecord::Migration[7.0]
  def change
    create_table :collaborators do |t|
      t.integer :respondent_id
      t.integer :user_id
      t.timestamps
    end
  end
end
