class AvaibleHoursController < ApplicationController
  before_action :set_avaible_hour, only: %i[ show edit update destroy ]

  # GET /avaible_hours or /avaible_hours.json
  def index
    @avaible_hours = AvaibleHour.all
  end

  # GET /avaible_hours/1 or /avaible_hours/1.json
  def show
  end

  # GET /avaible_hours/new
  def new
    @avaible_hour = AvaibleHour.new
  end

  # GET /avaible_hours/1/edit
  def edit
  end

  # POST /avaible_hours or /avaible_hours.json
  def create
    @avaible_hour = AvaibleHour.new(avaible_hour_params)
    @avaible_hour.user_id = current_user.id

    respond_to do |format|
      if @avaible_hour.save
        format.html { redirect_to @avaible_hour, notice: "Avaible hour was successfully created." }
        format.json { render :show, status: :created, location: @avaible_hour }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @avaible_hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /avaible_hours/1 or /avaible_hours/1.json
  def update
    respond_to do |format|
      if @avaible_hour.update(avaible_hour_params)
        format.html { redirect_to @avaible_hour, notice: "Avaible hour was successfully updated." }
        format.json { render :show, status: :ok, location: @avaible_hour }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @avaible_hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /avaible_hours/1 or /avaible_hours/1.json
  def destroy
    @avaible_hour.destroy
    respond_to do |format|
      format.html { redirect_to avaible_hours_url, notice: "Avaible hour was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_avaible_hour
      @avaible_hour = AvaibleHour.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def avaible_hour_params
      params.require(:avaible_hour).permit(:time, :date, :user_id)
    end
end
