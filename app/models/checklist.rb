class Checklist < ApplicationRecord
  has_many :tasks, dependent: :destroy

  validate_presence_of :tittle, :created_by
end
