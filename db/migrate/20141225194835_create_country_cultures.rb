class CreateCountryCultures < ActiveRecord::Migration
  def change
    create_table :country_cultures do |t|
      t.string :name
      t.string :symbol
      t.string :value
      t.integer :ally

      t.timestamps
    end
  end
end
