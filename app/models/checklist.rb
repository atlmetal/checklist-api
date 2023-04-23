class Checklist < ApplicationRecord
  has_many :tasks, dependent: :destroy

  validates_presence_of :tittle, :created_by
end
