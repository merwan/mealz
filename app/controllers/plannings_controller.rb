class PlanningsController < ApplicationController
  before_action :set_planning, only: [:show, :edit, :update, :destroy]
  before_filter :require_login

  # GET /plannings
  # GET /plannings.json
  def index
    @plannings = current_user.plannings
  end

  # GET /plannings/1
  # GET /plannings/1.json
  def show
  end

  # GET /plannings/new
  def new
    @planning = Planning.new
  end

  # GET /plannings/1/edit
  def edit
  end

  # POST /plannings
  # POST /plannings.json
  def create
    @planning = Planning.new(planning_params)
    @planning.user = current_user

    respond_to do |format|
      if @planning.save
        format.html { redirect_to @planning, notice: 'Planning was successfully created.' }
        format.json { render action: 'show', status: :created, location: @planning }
      else
        format.html { render action: 'new' }
        format.json { render json: @planning.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plannings/1
  # PATCH/PUT /plannings/1.json
  def update
    respond_to do |format|
      if @planning.update(planning_params)
        format.html { redirect_to @planning, notice: 'Planning was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @planning.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plannings/1
  # DELETE /plannings/1.json
  def destroy
    @planning.destroy
    respond_to do |format|
      format.html { redirect_to plannings_url }
      format.json { head :no_content }
    end
  end

  private
  def require_login
    unless current_user
      redirect_to root_url
      return false
    end
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_planning
    @planning = Planning.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def planning_params
    params.require(:planning).permit(:start_date, :end_date)
  end
end
