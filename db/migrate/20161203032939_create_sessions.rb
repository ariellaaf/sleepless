class CreateSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :sessions do |t|
      t.integer :mentor_id
      t.integer :topic_id
      t.string :title
      t.text :description
      t.integer :minutes

      t.timestamps
    end
  end
end
