class ItemsController < ApplicationController
  before_action :set_checklist
  before_action :set_checklist_item, only: [:show, :update, :destory]

  # GET /checklists/:checklist_id/items
  def index
    json_response(@checklist.items)
  end

  # GET /checklists/:checklist_id/items/:id
  def show
    json_response(@item)
  end

  # PUT /checklists/:checklist_id/items/:id
  def create
    @checklist.items.create!(item_params)
    json_response(@checklist, :created)
  end

  def update
    @item.update(item_params)
    head :no_content
  end

  def destory
    @item.destroy
    head :no_content
  end

  private

  def item_params
    params.permit(:name, :done)
  end

  def set_checklist
    @checklist = checklist.find(params[:checklist_id])
  end

  def set_checklist_item
    @item = @checklist.items.find_by!(id: params[:id]) if @checklist
  end
end
