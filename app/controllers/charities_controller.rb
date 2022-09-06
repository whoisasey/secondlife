class CharitiesController < ApplicationController
  before_action :set_charity, only: %i[ show edit update destroy ]

  # GET /charities or /charities.json
  def index
    @charities = Charity.all
  end

  # GET /charities/1 or /charities/1.json
  def show
  end

  # GET /charities/new
  def new
    @charity = Charity.new
  end

  # GET /charities/1/edit
  def edit
  end

  # POST /charities or /charities.json
  def create
    @charity = Charity.new(charity_params)
    @charity.admin = current_admin

    respond_to do |format|
      if @charity.save
        format.html { redirect_to charity_url(@charity), notice: "Charity was successfully created." }
        format.json { render :show, status: :created, location: @charity }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @charity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /charities/1 or /charities/1.json
  def update
    respond_to do |format|
      if @charity.update(charity_params)
        format.html { redirect_to charity_url(@charity), notice: "Charity was successfully updated." }
        format.json { render :show, status: :ok, location: @charity }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @charity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /charities/1 or /charities/1.json
  def destroy
    @charity.destroy

    respond_to do |format|
      format.html { redirect_to charities_url, notice: "Charity was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_charity
      @charity = Charity.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def charity_params
      params.require(:charity).permit(:name, :website, :email, :profile, :charity_no, :address, :mission, :vision, :values, :target_group, :services, :accepted_items)
    end
end
