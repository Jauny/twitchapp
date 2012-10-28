class CreateStreams < ActiveRecord::Migration
  def change
    create_table :streams do |t|
      t.string :name
      t.integer :viewers
      t.string :logo
      t.string :game
      t.string :channel_name

      t.timestamps
    end
  end
end
