require './config/environment'
require 'clockwork'

include Clockwork

every(24.hour, 'block.bots') do
  BotWorker.perform_async
end