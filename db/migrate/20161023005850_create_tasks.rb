class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks, id: :uuid do |t|
      t.string :name
      t.string :description
      t.integer :progress, default: 0
      t.uuid :project_id

      t.timestamps null: false
    end

    add_index :tasks, :project_id
  end
end
