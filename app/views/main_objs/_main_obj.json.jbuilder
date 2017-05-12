json.extract! main_obj, :id, :title, :text, :limit, :user_id, :created_at, :updated_at
json.url main_obj_url(main_obj, format: :json)
