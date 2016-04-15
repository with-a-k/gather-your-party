require 'discordrb'

class Discordrb::PartyGatheringBot < Discordrb::Commands::CommandBot
  def initialize
    @parties = {}
  end

  def create_party(name, users)
    @parties[name] = []
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
