class SessionsController < ApplicationController
  def new
    @session = Session.new
    @therapist = User.find(params[:therapist_id])
  end
end
