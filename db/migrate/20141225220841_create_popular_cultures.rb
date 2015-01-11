class CreatePopularCultures < ActiveRecord::Migration
  def change
    create_table :popular_cultures do |t|
      t.string :sport
      t.string :movie
      t.string :televison
      t.string :fashion
      t.string :music
      t.string :entertainment
      t.string :religion

      t.timestamps
    end
  end
end
