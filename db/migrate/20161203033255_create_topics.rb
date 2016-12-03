class CreateTopics < ActiveRecord::Migration[5.0]
  def change
    create_table :topics do |t|
      t.integer :mentor_id
      t.integer :session_id
      t.string :name
      t.text :description
      t.integer :total_sessions

      t.timestamps
    end
  end
end
