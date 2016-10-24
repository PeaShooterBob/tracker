When(/^I (?:try to )?create a task with:$/) do |table|
  attributes = vertical_table table
  d.create_task attributes
end

Then(/^the system has the tasks:$/) do |table|
  ActiveCucumber.diff_all! Task.order(:created_at), table
end
