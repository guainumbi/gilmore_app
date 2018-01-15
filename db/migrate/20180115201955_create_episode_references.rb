class CreateEpisodeReferences < ActiveRecord::Migration[5.1]
  def change
    create_table :episode_references do |t|
      t.integer :episode_id
      t.integer :reference_id

      t.timestamps
    end
  end
end
