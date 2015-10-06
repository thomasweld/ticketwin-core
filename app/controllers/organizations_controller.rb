class OrganizationsController < ApplicationController
  before_action :set_organization, only: [:show, :update, :destroy]

  # GET /organizations
  # GET /organizations.json
  def index
    @organizations = Organization.all

    respond_with @organizations
  end

  # GET /organizations/1
  # GET /organizations/1.json
  def show
    respond_with @organization
  end

  # POST /organizations
  # POST /organizations.json
  def create
    @organization = Organization.new(organization_params)

    if @organization.save
      respond_with @organization, status: :created, location: @organization
    else
      respond_with @organization.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /organizations/1
  # PATCH/PUT /organizations/1.json
  def update
    @organization = Organization.find(params[:id])

    if @organization.update(organization_params)
      head :no_content
    else
      respond_with @organization.errors, status: :unprocessable_entity
    end
  end

  # DELETE /organizations/1
  # DELETE /organizations/1.json
  def destroy
    @organization.destroy

    head :no_content
  end

  private

    def set_organization
      @organization = Organization.find(params[:id])
    end

    def organization_params
      params.require(:organization).permit(:name, :created_at, :updated_at)
    end
end
