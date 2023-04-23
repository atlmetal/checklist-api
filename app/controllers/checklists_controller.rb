class ChecklistsController < ApplicationController
  def index
    @checklists = Checklist.all
    json_response(@checklists)
  end
end
