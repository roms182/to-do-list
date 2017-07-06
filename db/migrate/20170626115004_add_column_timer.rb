class AddColumnTimer < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :timer, :integer
  end
end
