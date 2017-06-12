class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :details
      t.string :order
      t.string :time

      t.timestamps
    end
  end
end
