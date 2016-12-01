class CreatePodcasts < ActiveRecord::Migration[5.0]
  def change
    create_table :podcasts do |t|
      t.string :episode
      t.string :speaker

      t.timestamps
    end
  end
end
