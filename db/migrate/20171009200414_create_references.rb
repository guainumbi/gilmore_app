class CreateReferences < ActiveRecord::Migration[5.1]
  def change
    create_table :references do |t|
      t.string :category
      t.string :name

      t.timestamps
    end
  end
end
