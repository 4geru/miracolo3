class CreateSubObjs < ActiveRecord::Migration[5.0]
  def change
    create_table :sub_objs do |t|
      t.string :title
      t.text :text
      t.datetime :limit
      t.integer :main_obj_id

      t.timestamps
    end
  end
end
