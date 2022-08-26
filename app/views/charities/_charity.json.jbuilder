json.extract! charity, :id, :name, :website, :email, :profile, :charity_no, :address, :mission, :vision, :values, :target_group, :services, :accepted_items, :created_at, :updated_at
json.url charity_url(charity, format: :json)
