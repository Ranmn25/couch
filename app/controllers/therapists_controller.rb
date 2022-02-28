class TherapistsController < ApplicationController
  def show
    @therapist = User.where(is_therapist: true)
  end

  private

  def therapist_paramas
    params.require(:therapist).permit()
  end
end
