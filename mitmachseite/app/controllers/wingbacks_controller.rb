class WingbacksController < ApplicationController
  before_action :set_wingback, only: [:show, :edit, :update, :destroy]

  # GET /wingbacks
  # GET /wingbacks.json
  def index
    @wingbacks = Wingback.all
  end

  # GET /wingbacks/1
  # GET /wingbacks/1.json
  def show
  end

  # GET /wingbacks/new
  def new
    @wingback = Wingback.new
  end

  # GET /wingbacks/1/edit
  def edit
  end

  # POST /wingbacks
  # POST /wingbacks.json
  def create
    @wingback = Wingback.new(wingback_params)

    respond_to do |format|
      if @wingback.save
        format.html { redirect_to @wingback, notice: 'Wingback was successfully created.' }
        format.json { render :show, status: :created, location: @wingback }
      else
        format.html { render :new }
        format.json { render json: @wingback.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wingbacks/1
  # PATCH/PUT /wingbacks/1.json
  def update
    respond_to do |format|
      if @wingback.update(wingback_params)
        format.html { redirect_to @wingback, notice: 'Wingback was successfully updated.' }
        format.json { render :show, status: :ok, location: @wingback }
      else
        format.html { render :edit }
        format.json { render json: @wingback.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wingbacks/1
  # DELETE /wingbacks/1.json
  def destroy
    @wingback.destroy
    respond_to do |format|
      format.html { redirect_to wingbacks_url, notice: 'Wingback was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wingback
      @wingback = Wingback.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wingback_params
      params.require(:wingback).permit(:image)
    end
end
