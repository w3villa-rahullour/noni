class NonisController < ApplicationController
  before_action :set_noni, only: %i[ show edit update destroy ]

  # GET /nonis or /nonis.json
  def index
    @nonis = Noni.all
  end

  # GET /nonis/1 or /nonis/1.json
  def show
  end

  # GET /nonis/new
  def new
    @noni = Noni.new
  end

  # GET /nonis/1/edit
  def edit
  end

  # POST /nonis or /nonis.json
  def create
    @noni = Noni.new(noni_params)

    respond_to do |format|
      if @noni.save
        format.html { redirect_to noni_url(@noni), notice: "Noni was successfully created." }
        format.json { render :show, status: :created, location: @noni }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @noni.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nonis/1 or /nonis/1.json
  def update
    respond_to do |format|
      if @noni.update(noni_params)
        format.html { redirect_to noni_url(@noni), notice: "Noni was successfully updated." }
        format.json { render :show, status: :ok, location: @noni }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @noni.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nonis/1 or /nonis/1.json
  def destroy
    @noni.destroy

    respond_to do |format|
      format.html { redirect_to nonis_url, notice: "Noni was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_noni
      @noni = Noni.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def noni_params
      params.fetch(:noni, {})
    end
end
