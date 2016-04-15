require 'discordrb'

bot = Discordrb::PartyGatheringBot.new token: '', application_id: '', prefix: '!'

bot.command :register do |name, *users|
  create_party(name, users)
end

bot.command :assemble do |name|
  assemble_party(name)
end

bot.command :disband do |name|
  disband_party(name)
end

bot.run
