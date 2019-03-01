class CreateCatches < ActiveRecord::Migration[5.2]
  def change
    create_table :catches do |t|
      t.string :species
      t.integer :weight

      t.timestamps
    end
  end
end
