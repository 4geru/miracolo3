class IroIroSuruwa < ActiveRecord::Migration[5.0]
  def change
    add_column :sub_objs, :user_id, :integer
    add_column :sub_objs, :start, :datetime
    add_column :main_objs, :start, :datetime
    add_column :users, :password, :string
    remove_column :sub_objs, :main_obj_id, :integer
  end
end
