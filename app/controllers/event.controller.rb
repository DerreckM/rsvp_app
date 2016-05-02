class EventController < ApplicationController
  def index
    @attendee = Attendee.new()
  end
end
