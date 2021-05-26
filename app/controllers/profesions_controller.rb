class ProfesionsController < ApplicationController
before_action :set_profesion, only: [:edit, :update, :show, :destroy]

  def create
    @profesion = Profesion.new(profesion_params)
  end

  def show
  end

  def edit
  end
  
  def update
    @profesion.update(profesion_params)
  end

  def destroy
    @profesion.destroy
  end

  private
  
  def set_profesion
    @profesion = Profesion.find(params[:id])
  end
  # Only allow a list of trusted parameters through.
  def profesion_params
    params.require(:profesion).permit(:name)
  end
end
