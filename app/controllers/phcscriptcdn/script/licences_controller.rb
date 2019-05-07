require_dependency "phcscriptcdn/application_controller"

module Phcscriptcdn
  class Script::LicencesController < ApplicationController

    # Include Core Helpers, Security & Action Filters
    include Phccorehelpers::PhcpluginsproHelper
    before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_script_licence, only: [:show, :edit, :update, :destroy]

    # INDEX - Script Licences
    def index
      @script_licences = Script::Licence.all
    end

    # DETAILS - Script Licences
    def show
      @script_licences = Script::Licence.friendly.find(params[:id])
      @versions = Phcscriptcdn::LicenceVersions.where(item_id: params[:id], item_type: 'Phcscriptcdn::Script::Licence')
    end

    # NEW - Script Licences
    def new
      @script_licence = Script::Licence.new
    end

    # EDIT - Script Licences
    def edit
    end

    # POST - Script Licences
    def create
      @script_licence = Script::Licence.new(script_licence_params)
      @script_licence.user_id = current_user.id
      if @script_licence.save
        redirect_to script_licences_url, notice: 'Licence was successfully created.'
        else
        render :new
      end
    end

    # PATCH/PUT - Script Licences
    def update
      if @script_licence.update(script_licence_params)
        redirect_to script_licences_url, notice: 'Licence was successfully updated.'
        else
          render :edit
      end
    end

    # DELETE - Script Licences
    def destroy
      @script_licence.destroy
      redirect_to script_licences_url, notice: 'Licence was successfully destroyed.'
    end

    private

    # Common Callbacks
    def set_script_licence
      @script_licence = Script::Licence.friendly.find(params[:id])
    end

    # Whitelists
    def script_licence_params
      params.require(:script_licence).permit(:licence_name, :licence_description, :licence_compatible_gpl, :licence_approval_fsf, :licence_approval_osi, :licence_approval_copyfree, :licence_approval_debian, :licence_approval_fedora, :slug, :user_id, :org_id, :listing_id)
    end

  end
end
