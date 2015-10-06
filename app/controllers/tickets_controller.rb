class TicketsController < ApplicationController
  before_action :set_ticket, only: [:show, :update, :destroy]

  # GET /tickets
  # GET /tickets.json
  def index
    @tickets = Ticket.all

    respond_with @tickets
  end

  # GET /tickets/1
  # GET /tickets/1.json
  def show
    respond_with @ticket
  end

  # POST /tickets
  # POST /tickets.json
  def create
    @ticket = Ticket.new(ticket_params)

    if @ticket.save
      respond_with @ticket, status: :created, location: @ticket
    else
      respond_with @ticket.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tickets/1
  # PATCH/PUT /tickets/1.json
  def update
    @ticket = Ticket.find(params[:id])

    if @ticket.update(ticket_params)
      head :no_content
    else
      respond_with @ticket.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tickets/1
  # DELETE /tickets/1.json
  def destroy
    @ticket.destroy

    head :no_content
  end

  private

    def set_ticket
      @ticket = Ticket.find(params[:id])
    end

    def ticket_params
      params.require(:ticket).permit(:sku, :status, :user_id, :created_at, :updated_at, :tier_id, :order_id)
    end
end
