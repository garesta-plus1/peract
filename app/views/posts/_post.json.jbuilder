json.extract! post, :id, :user_id, :title, :detail, :category, :image_1, :image_2, :image_3, :published, :status, :num_of_planner, :num_of_engineer, :num_of_designer, :motivation, :period, :scale, :main_color, :created_at, :updated_at
json.url post_url(post, format: :json)
