class FlyersController < ApplicationController
  before_action :set_flyer, only: [:show, :edit, :update, :destroy]

  # GET /flyers
  # GET /flyers.json
  def index
    @flyers = Flyer.all
  end

  # GET /flyers/1
  # GET /flyers/1.json
  def show
  end

  # GET /flyers/new
  def new
    @flyer = Flyer.new
  end

  # GET /flyers/1/edit
  def edit
  end

  # POST /flyers
  # POST /flyers.json
  def create
    @flyer = Flyer.new(flyer_params)

    respond_to do |format|
      if @flyer.save
        format.html { redirect_to @flyer, notice: 'Flyer was successfully created.' }
        format.json { render :show, status: :created, location: @flyer }
      else
        format.html { render :new }
        format.json { render json: @flyer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flyers/1
  # PATCH/PUT /flyers/1.json
  def update
    respond_to do |format|
      if @flyer.update(flyer_params)
        format.html { redirect_to @flyer, notice: 'Flyer was successfully updated.' }
        format.json { render :show, status: :ok, location: @flyer }
      else
        format.html { render :edit }
        format.json { render json: @flyer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flyers/1
  # DELETE /flyers/1.json
  def destroy
    @flyer.destroy
    respond_to do |format|
      format.html { redirect_to flyers_url, notice: 'Flyer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flyer
      @flyer = Flyer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flyer_params
      params.require(:flyer).permit(:descr, :title,:article)
    end
end
