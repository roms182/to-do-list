class AddTaskColor < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :color, :string
  end
end
