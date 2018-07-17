class Project < ApplicationRecord
    mount_uploader :image_path, ImageUploader
    has_many :project_comments
    has_many :category_projects
    has_many :skill_projects
    has_many :users_projects
    has_many :categories, through: :category_projects
    has_many :skills, through: :skill_projects
    has_many :users, through: :user_projects
    
    paginates_per 4
    
    has_many :impressions, :as=>:impressionable
    is_impressionable :counter_cache => true, :unique => true
 
 # 조회수 구현
   def impression_count
       impressions.size
   end
 
   def unique_impression_count
       # impressions.group(:ip_address).size gives => {'127.0.0.1'=>9, '0.0.0.0'=>1}
       # so getting keys from the hash and calculating the number of keys
       impressions.group(:ip_address).size.keys.length #TESTED
   end
end
