# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  progress    :integer          default(0)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  project_id  :uuid
#
# Indexes
#
#  index_tasks_on_project_id  (project_id)
#

class Task < ActiveRecord::Base
  belongs_to :project

  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :project
  validates_presence_of :progress

  enum progress:[:todo, :in_progress, :done]
end
