class ResolvWorker
  include Sidekiq::Worker

  def perform(bot_id)
    bot = Bot.find_by id: bot_id

    begin
      hostname = Resolv.getname(bot.ip)
    rescue
      hostname = nil
    end

    bot.hostname = hostname
    bot.save
  
  end
end