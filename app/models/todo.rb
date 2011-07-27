class Todo < ActiveRecord::Base
  belongs_to :list
  belongs_to :todo
  has_many :todos
end
