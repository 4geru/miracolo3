class CreateMainObjs < ActiveRecord::Migration[5.0]
  def change
    create_table :main_objs do |t|
      t.string :title
      t.text :text
      t.datetime :limit
      t.integer :user_id

      t.timestamps
    end
  end
end
