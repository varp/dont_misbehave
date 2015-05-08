class HomeController < ApplicationController
  def index
    unless params[:page].nil?
      @page_num = params[:page]
      unless (1..3).include? @page_num.to_i
        not_found
      end
    end

    save_hit

    bot = Bot.find_by(ip: request.remote_ip)
    return forbidden if bot && bot.is_blocked && 
        ENV['MISBEHAVE_ADMIN_IP'] != request.remote_ip

    b            = Bot.new
    b.ip         = request.remote_ip
    b.user_agent = request.headers["User-Agent"]
    b.is_crawler = true if crawler?
    if b.save
      ResolvWorker.perform_async(b.id)
    end

  end

  private 

    def crawler?
      if request.headers['User-Agent'] =~ /.*(bingbot|msnbot|bingpreview|yandex\.com\/bots|google).*/i
        return true
      end
      false
    end

    def save_hit
      hit = Hit.new
      hit.ip         = request.remote_ip
      hit.user_agent = request.headers['User-Agent']
      hit.referer    = request.headers['Referer']
      hit.path       = request.original_fullpath
      hit.save!
    end

end
