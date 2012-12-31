class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :name
      t.string :likes
      t.string :dislikes

      t.timestamps
    end
  end
end
