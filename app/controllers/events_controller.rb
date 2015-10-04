class EventsController < ApplicationController
  before_action :set_event, only: [:show, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    #@events = Event.approved
    @events = Event.all  #original content from scaffolding - T


    respond_with @events
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find(params[:id])
    @tiers = @event.tiers.sort_by(&:level)
    @order = Order.new

    respond_with @event
  end


# new method not generated on rails g scaffold - T
  def new
    @event = Event.new(user: current_user)
    5.times { @event.tiers.build }
    gon.push(stripe_authorized: @event.user.stripe_authorized?, stripe_message: session.delete(:stripe))
    
    respond_with @event
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)
    @event.user = current_user

    if @event.save
      redirect_to @event, notice: 'Your event was created successfully! Thanks for using Ticket Win.'
      respond_with @event, status: :created, location: @event
    else
      respond_with @event.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    @event = Event.find(params[:id])

    if @event.update(event_params)
      head :no_content
    else
      respond_with @event.errors, status: :unprocessable_entity
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy

    head :no_content
  end

  private

    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:title, :description, :start_date, :end_date, :user_id, :created_at, :updated_at, :status, :image_file_name, :image_file_size, :image_updated_at, :location, :organization_id)
    end
end
