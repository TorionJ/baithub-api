class CreateCatches < ActiveRecord::Migration[5.2]
  def change
    create_table :catches do |t|
      t.belongs_to :bait, index: true
      t.belongs_to :user, index: true
      t.string :species
      t.integer :weight

      t.timestamps
    end
  end
end
