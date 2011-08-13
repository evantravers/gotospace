class Todo < ActiveRecord::Base
  belongs_to :list
  belongs_to :todo
  has_many :todos

  after_initialize :set_default

  def set_default
    self.completed = false if self.completed == nil
  end
end
