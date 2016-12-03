class CreateMentors < ActiveRecord::Migration[5.0]
  def change
    create_table :mentors do |t|
      t.integer :topic_id
      t.string :name
      t.text :bio

      t.timestamps
    end
  end
end
