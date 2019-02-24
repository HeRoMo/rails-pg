class Task < ApplicationRecord
  belongs_to :project
  has_and_belongs_to_many :members

  enum status: { waiting: 0, doing: 1, done: 2, cancel: -1 }
end
