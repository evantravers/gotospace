class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :name
      t.boolean :completed
      t.references :list

      t.timestamps
    end
    add_index :todos, :list_id
  end
end
