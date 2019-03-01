class CreateTackleBoxItems < ActiveRecord::Migration[5.2]
  def change
    create_table :tackle_box_items do |t|
      t.belongs_to :bait, index: true
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
