class SpecialityPullsController < ApplicationController
  before_action :set_speciality_pull, only: [:show, :edit, :update, :destroy]

  # GET /speciality_pulls
  # GET /speciality_pulls.json
  def index
    @speciality_pulls = SpecialityPull.all
  end

  # GET /speciality_pulls/1
  # GET /speciality_pulls/1.json
  def show
  end

  # GET /speciality_pulls/new
  def new
    @speciality_pull = SpecialityPull.new
  end

  # GET /speciality_pulls/1/edit
  def edit
  end

  # POST /speciality_pulls
  # POST /speciality_pulls.json
  def create
    @speciality_pull = SpecialityPull.new(speciality_pull_params)

    respond_to do |format|
      if @speciality_pull.save
        format.html { redirect_to @speciality_pull, notice: 'Speciality pull was successfully created.' }
        format.json { render :show, status: :created, location: @speciality_pull }
      else
        format.html { render :new }
        format.json { render json: @speciality_pull.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /speciality_pulls/1
  # PATCH/PUT /speciality_pulls/1.json
  def update
    respond_to do |format|
      if @speciality_pull.update(speciality_pull_params)
        format.html { redirect_to @speciality_pull, notice: 'Speciality pull was successfully updated.' }
        format.json { render :show, status: :ok, location: @speciality_pull }
      else
        format.html { render :edit }
        format.json { render json: @speciality_pull.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /speciality_pulls/1
  # DELETE /speciality_pulls/1.json
  def destroy
    @speciality_pull.destroy
    respond_to do |format|
      format.html { redirect_to speciality_pulls_url, notice: 'Speciality pull was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_speciality_pull
      @speciality_pull = SpecialityPull.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def speciality_pull_params
      params.require(:speciality_pull).permit(:key, :name, :ocen_list)
    end
end
