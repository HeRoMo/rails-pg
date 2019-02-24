class Task < ApplicationRecord
  belongs_to :project

  enum status: { waiting: 0, doing: 1, done: 2, cancel: -1 }
end
