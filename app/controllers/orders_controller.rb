class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all

    respond_with @orders
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    respond_with @order
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)

    if @order.save
      respond_with @order, status: :created, location: @order
    else
      respond_with @order.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    @order = Order.find(params[:id])

    if @order.update(order_params)
      head :no_content
    else
      respond_with @order.errors, status: :unprocessable_entity
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy

    head :no_content
  end

  private

    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:user_id, :created_at, :updated_at, :event_id, :redemption_code, :delivery_email)
    end
end
