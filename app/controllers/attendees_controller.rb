class AttendeesController < ApplicationController
  attr_accessor :date, :body
  def index
    @attendee = Attendee.new
    #@attendees = Attendees.new
  end

  def create
    @attendee = Attendee.create(name: params[:attendee][:name])#, body: params[:item][:body])
    redirect_to root_path
  end

end
