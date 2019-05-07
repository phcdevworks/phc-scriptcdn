require_dependency "phcscriptcdn/application_controller"

module Phcscriptcdn
  class Script::ListingsController < ApplicationController

    # Include Core Helpers, Security & Action Filters
    include Phccorehelpers::PhcpluginsproHelper
    before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_script_listing, only: [:show, :edit, :update, :destroy]

    # INDEX - Script Listings
    def index
      @script_listings = Script::Listing.all
    end

    # DETAILS - Script Listings
    def show
      @script_listings = Script::Listing.friendly.find(params[:id])
      @versions = Phcscriptcdn::ListingVersions.where(item_id: params[:id], item_type: 'Phcscriptcdn::Script_::Listing')
    end

    # NEW - Script Listings
    def new
      @script_listing = Script::Listing.new
    end

    # EDIT - Script Listings
    def edit
    end

    # POST - Script Listings
    def create
      @script_listing = Script::Listing.new(script_listing_params)
      @script_listing.user_id = current_user.id
      if @script_listing.save
        redirect_to script_listings_path, notice: 'Listing was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT - Script Listings
    def update
      if @script_listing.update(script_listing_params)
        redirect_to script_listings_path, notice: 'Listing was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE - Script Listings
    def destroy
      @script_listing.destroy
      redirect_to script_listings_path, notice: 'Listing was successfully destroyed.'
    end

    private

    # Common Callbacks
    def set_script_listing
      @script_listing = Script::Listing.friendly.find(params[:id])
    end

    # Whitelist
    def script_listing_params
      params.require(:script_listing).permit(:script_tittle, :script_description, :script_source, :script_website, :script_github, :script_initial_release, :script_lastest_release, :script_beta_release, :script_lastest_release_cdn, :script_status, :slug, :user_id, :version_id, :author_id, :licence_id)
    end

  end
end
