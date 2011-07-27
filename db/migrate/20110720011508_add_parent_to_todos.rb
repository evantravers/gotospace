class AddParentToTodos < ActiveRecord::Migration
  def change
    add_column :todos, :todos, :references
  end
end
