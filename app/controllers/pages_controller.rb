class PagesController < ApplicationController

  def home
    @site = Site.first if current_user.present?
  end
  
end
