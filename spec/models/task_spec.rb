require 'rails_helper'

RSpec.describe Task, type: :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should belong_to :project }
  it { should validate_presence_of :project_id }

  it 'progress should be todo by default' do
    task = create(:task)
    expect(task.progress).to eq("todo")
  end
end
