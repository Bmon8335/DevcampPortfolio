class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include SetSource
  include DefaultPageContent
  
  before_action :set_copyright
  
  def set_copyright
    @copyright = MontagueViewTool::Renderer.copyright 'Broderic Montague (RC)', 'All rights reserved'
  end
end

