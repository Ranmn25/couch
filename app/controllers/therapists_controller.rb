class TherapistsController < ApplicationController
  def index
    @therapists = User.where(is_therapist: true)
  end
end
