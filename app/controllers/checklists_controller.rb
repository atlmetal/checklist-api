class ChecklistsController < ApplicationController
  before_action :set_checklist, only: [:show, :update, :destroy]

  def index
    @checklists = Checklist.all
    json_response(@checklists)
  end

  #POST /checklists
  def create
    @checklists = Checklist.create!(checklist_params)
    json_response(@checklists, :created)
  end

  #GET /checklists/:id
  def show
    json_response(@checklists)
  end

  # PUT /checklists/:id
  def update
    @checklists.update(checklist_params)
    head :no_content
  end

  def destroy
    @checklists.destroy
    head :no_content
  end

  private

  def checklist_params
    # whitelist params
    params.permit(:tittle, :created_by)
  end

  def set_checklist
    @checklists = Checklist.find(params[:id])
  end
end
