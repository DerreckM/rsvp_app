class HostController < ApplicationController
  def index
    @attendees = Attendee.new
    @brandts = Attendee.all
    #@date = Date.new
    #@attendees = current_user.attendees
  end

  def create
    @attendee = current_user.items.create(date: params[:item][:date], body: params[:item][:body])
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
