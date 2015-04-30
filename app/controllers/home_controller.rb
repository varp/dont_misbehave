class HomeController < ApplicationController
  def index
    unless params[:page].nil?
      @page_num = params[:page]   
      unless (1..3).include? @page_num.to_i
        not_found
      end
    end    
    
  end
end
