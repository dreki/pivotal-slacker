# encoding: utf-8
require "rubygems"
require "rainbow"

class Formatter
  def self.story_id id
    id.to_s.color("#404040")
  end
  
  def self.state state
    if state == "finished"
      # state = state.color('009900').bright #background('009900').color('ffffff')
      " ✓ #{state} ".background('#4C9900').bright.underline
    elsif state == "accepted"
      " ✓ #{state} ".background('#0080ff').color(:black).underline
    else
      state = state.bright # .background(:green).underline
    end
  end
  
  def self.requested_by requested_by
    requested_by.color("#3399ff")
  end
  
  def self.story_name story_name
    story_name
  end
end