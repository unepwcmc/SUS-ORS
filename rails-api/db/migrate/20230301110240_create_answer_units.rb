class CreateAnswerUnits < ActiveRecord::Migration[7.0]
  def change
    create_table :answer_units do |t|
      t.string :unit
      t.string :description

      t.timestamps
    end
  end
end
