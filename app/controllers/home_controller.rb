class HomeController < ApplicationController
  def index
    unless params[:page].nil?
      @page_num = params[:page]
    end    
  end
end
