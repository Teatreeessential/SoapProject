class Skill < ApplicationRecord
    has_many :skill_projects
    has_many :projects, through: :skill_projects
end
