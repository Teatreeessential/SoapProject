class CreateCategoryProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :category_projects do |t|
      t.integer       :project_id
      t.integer       :catgory_id

      t.timestamps
    end
  end
end
