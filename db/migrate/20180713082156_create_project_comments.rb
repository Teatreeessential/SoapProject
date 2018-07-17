class CreateProjectComments < ActiveRecord::Migration[5.0]
  def change
    create_table :project_comments do |t|
      t.integer             :project_id
      t.string              :comment_contents

      t.timestamps
    end
  end
end
