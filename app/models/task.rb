class Task < ApplicationRecord
  belongs_to :checklist

  validate_presence_of :name
end
