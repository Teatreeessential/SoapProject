class CreateSkillProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :skill_projects do |t|
      t.integer       :skill_id
      t.integer       :project_id

      t.timestamps
    end
  end
end
