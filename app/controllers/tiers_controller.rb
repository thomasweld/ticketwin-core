class TiersController < ApplicationController
  before_action :set_tier, only: [:show, :update, :destroy]

  # GET /tiers
  # GET /tiers.json
  def index
    @tiers = Tier.all

    render json: @tiers
  end

  # GET /tiers/1
  # GET /tiers/1.json
  def show
    render json: @tier
  end

  # POST /tiers
  # POST /tiers.json
  def create
    @tier = Tier.new(tier_params)

    if @tier.save
      render json: @tier, status: :created, location: @tier
    else
      render json: @tier.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tiers/1
  # PATCH/PUT /tiers/1.json
  def update
    @tier = Tier.find(params[:id])

    if @tier.update(tier_params)
      head :no_content
    else
      render json: @tier.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tiers/1
  # DELETE /tiers/1.json
  def destroy
    @tier.destroy

    head :no_content
  end

  private

    def set_tier
      @tier = Tier.find(params[:id])
    end

    def tier_params
      params.require(:tier).permit(:level, :name, :description, :price, :event_id, :created_at, :updated_at, :unprovisioned_tickets, :display)
    end
end
