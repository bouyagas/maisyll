class CreateHighCultures < ActiveRecord::Migration
  def change
    create_table :high_cultures do |t|
      t.string :folk
      t.string :classic_music
      t.string :art
      t.string :history
      t.string :theater

      t.timestamps
    end
  end
end
