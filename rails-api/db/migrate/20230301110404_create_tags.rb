class CreateTags < ActiveRecord::Migration[7.0]
  def change
    create_table :tags do |t|
      t.string :tag, limit: 20
      t.string :description

      t.timestamps
    end
  end
end
