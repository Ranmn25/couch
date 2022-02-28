class TherapistsController < ApplicationController
  def show
    @therapist = User.find(params[:id])
  end

  private

  def therapist_paramas
    params.require(:therapist).permit()
  end
end
