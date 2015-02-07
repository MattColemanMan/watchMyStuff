class WatchesController < ApplicationController
  before_action :set_watch, only: [:show, :edit, :update, :destroy]

  # GET /watches
  # GET /watches.json
  def index
    @watches = Watch.all
  end

  # GET /watches/1
  # GET /watches/1.json
  def show
  end

  # GET /watches/new
  def new
    @watch = Watch.new
  end

  # GET /watches/1/edit
  def edit
  end

  # GET /watches/unfulfilled
  def unfulfilled
    @watches = Watch.where(status:"Unfulfilled Watch")
    render json: @watches, status: :ok
  end

  # POST /watches
  # POST /watches.json
  def create
    @watch = Watch.new(watch_params)

    respond_to do |format|
      if @watch.save
        format.html { redirect_to @watch, notice: 'Watch was successfully created.' }
        format.json { render action: 'show', status: :created, location: @watch }
      else
        format.html { render action: 'new' }
        format.json { render json: @watch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /watches/1
  # PATCH/PUT /watches/1.json
  def update
    respond_to do |format|
      if @watch.update(watch_params)
        format.html { redirect_to @watch, notice: 'Watch was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @watch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /watches/1
  # DELETE /watches/1.json
  def destroy
    @watch.destroy
    respond_to do |format|
      format.html { redirect_to watches_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_watch
      @watch = Watch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def watch_params
      params.require(:watch).permit(:user_id, :watcher_id, :lat, :lng, :location_description, :location_picture, :requested_minutes, :start_time, :end_time, :status)
    end
end
