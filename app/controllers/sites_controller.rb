class SitesController < ApplicationController

  def update
    @site = Site.first if current_user.present?
    @site.update_attributes(site_attributes)
    redirect_to root_path
  end

  private def site_attributes
    params.require(:site).permit({
      gallery_attributes: [:id, {
        asset_attachments_attributes: [:id, :sort_order, :asset_id, :"_destroy"]
      }]
    })
  end
  
end
