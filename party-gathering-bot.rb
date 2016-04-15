require 'discordrb'

class Discordrb::PartyGatheringBot < Discordrb::Commands::CommandBot
  def initialize
    @parties = {}
  end

  def add_to_party(name, users)
    @parties[name] = [] unless @parties[name]
    users.each do |user|
      @parties[name] << user
    end
  end

  def assemble_party(name)
    @parties[name].reduce("") do |message, user|
      message + "@{user}"
    end
  end

  def disband_party(name)
    @parties[name] = nil
  end
end
