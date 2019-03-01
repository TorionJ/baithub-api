class CreateTackleBoxItems < ActiveRecord::Migration[5.2]
  def change
    create_table :tackle_box_items do |t|

      t.timestamps
    end
  end
end
