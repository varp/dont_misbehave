require 'resolv'

class HomeController < ApplicationController
  def index
    unless params[:page].nil?
      @page_num = params[:page]   
      unless (1..3).include? @page_num.to_i
        not_found
      end
    end

    return forbidden if Bot.find_by(ip: request.remote_ip) && 
        ENV['MISBEHAVE_ADMIN_IP'] != request.remote_ip

    b = Bot.new
    b.ip         = request.remote_ip
    b.user_agent = request.headers["User-Agent"]
    b.hostname   = ""

    b.is_crawler = true if crawler?(b.user_agent)
    b.save

    # if b.valid?    
    #   b.save
    # else
    #   b = nil
    #   forbidden unless ENV['MISBEHAVE_ADMIN_IP'] == request.remote_ip
    # end

  end

  private 

    def crawler?(user_agent)
      if user_agent =~ /.*(bingbot|msnbot|bingpreview|yandex\.com\/bots|google).*/i
        return true
      end
      false
    end

end
