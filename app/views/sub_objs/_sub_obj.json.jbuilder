json.extract! sub_obj, :id, :title, :text, :limit, :main_obj_id, :created_at, :updated_at
json.url sub_obj_url(sub_obj, format: :json)
