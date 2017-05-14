class AddCulumnToSuboObjs < ActiveRecord::Migration[5.0]
  def change
    add_column :sub_objs, :place_id, :integer
  end
end
