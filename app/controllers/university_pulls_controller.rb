class UniversityPullsController < ApplicationController
  before_action :set_university_pull, only: [:show, :edit, :update, :destroy]

  # GET /university_pulls
  # GET /university_pulls.json
  def index
    @university_pulls = UniversityPull.all
  end

  # GET /university_pulls/1
  # GET /university_pulls/1.json
  def show
  end

  # GET /university_pulls/new
  def new
    @university_pull = UniversityPull.new
  end

  # GET /university_pulls/1/edit
  def edit
  end

  # POST /university_pulls
  # POST /university_pulls.json
  def create
    @university_pull = UniversityPull.new(university_pull_params)

    respond_to do |format|
      if @university_pull.save
        format.html { redirect_to @university_pull, notice: 'University pull was successfully created.' }
        format.json { render :show, status: :created, location: @university_pull }
      else
        format.html { render :new }
        format.json { render json: @university_pull.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /university_pulls/1
  # PATCH/PUT /university_pulls/1.json
  def update
    respond_to do |format|
      if @university_pull.update(university_pull_params)
        format.html { redirect_to @university_pull, notice: 'University pull was successfully updated.' }
        format.json { render :show, status: :ok, location: @university_pull }
      else
        format.html { render :edit }
        format.json { render json: @university_pull.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /university_pulls/1
  # DELETE /university_pulls/1.json
  def destroy
    @university_pull.destroy
    respond_to do |format|
      format.html { redirect_to university_pulls_url, notice: 'University pull was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_university_pull
      @university_pull = UniversityPull.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def university_pull_params
      params.require(:university_pull).permit(:key, :name)
    end
end
