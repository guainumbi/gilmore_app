class CreateEpisodes < ActiveRecord::Migration[5.1]
  def change
    create_table :episodes do |t|
      t.string :title
      t.integer :season_id
      t.date :aired_at

      t.timestamps
    end
  end
end
