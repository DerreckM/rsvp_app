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

  def update
    attendee = current_user.attendees.find_by(params[:id])
    attendee.update(date: params[:item][:date], body: params[:item][:body])
    redirect_to attendees_path
  end

  def edit
    @attendee = current_user.attendees.find_by(params[:id])
    @keywords = @attendee.keywords
  end

end
