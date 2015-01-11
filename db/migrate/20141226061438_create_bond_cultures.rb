class CreateBondCultures < ActiveRecord::Migration
  def change
    create_table :bond_cultures do |t|
      t.string :value
      t.string :norm
      t.string :custom
      t.string :tradition
      t.string :belief
      t.string :language

      t.timestamps
    end
  end
end
