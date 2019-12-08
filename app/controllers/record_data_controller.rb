class RecordDataController < ApplicationController
  before_action :set_record_datum, only: [:show, :edit, :update, :destroy]

  # GET /record_data
  # GET /record_data.json
  def index
    @record_data = RecordDatum.all
  end

  # GET /record_data/1
  # GET /record_data/1.json
  def show
  end

  # GET /record_data/new
  def new
    @record_datum = RecordDatum.new
  end

  # GET /record_data/1/edit
  def edit
  end

  # POST /record_data
  # POST /record_data.json
  def create
    @record_datum = RecordDatum.new(record_datum_params)

    respond_to do |format|
      if @record_datum.save
        format.html { redirect_to @record_datum, notice: 'Record datum was successfully created.' }
        format.json { render :show, status: :created, location: @record_datum }
      else
        format.html { render :new }
        format.json { render json: @record_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /record_data/1
  # PATCH/PUT /record_data/1.json
  def update
    respond_to do |format|
      if @record_datum.update(record_datum_params)
        format.html { redirect_to @record_datum, notice: 'Record datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @record_datum }
      else
        format.html { render :edit }
        format.json { render json: @record_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /record_data/1
  # DELETE /record_data/1.json
  def destroy
    @record_datum.destroy
    respond_to do |format|
      format.html { redirect_to record_data_url, notice: 'Record datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_record_datum
      @record_datum = RecordDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def record_datum_params
      params.require(:record_datum).permit(:user, :post, :upvotes, :date, :totalViews)
    end
end
