class BotWorker
  include Sidekiq::Worker

  def perform
    Bot.all.each do |bot|
      unless bot.is_blocked 
        bot.is_blocked = true
      end
    end
  end
end