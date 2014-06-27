class SacEntriesController < ApplicationController
  before_action :set_sac_entry, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /sac_entries
  # GET /sac_entries.json
  def index
    #@sac_entries = SacEntry.all
    @sac_entries = SacEntry.where(user_id: current_user.id)
  end

  # GET /sac_entries/1
  # GET /sac_entries/1.json
  def show
  end

  # GET /sac_entries/new
  def new
    @sac_entry = SacEntry.new

    # get all categories the user created
    @categories = Category.where(user_id: current_user.id)
    # add categories the user subscribed
    Category.all.each do |c|
      @categories << c if c.users.exists?(current_user)
    end
    @options = @categories.collect do |s|
      [s.name, s.id]
    end
  end

  # GET /sac_entries/1/edit
  def edit
    @options = Category.all.
    collect do |s|
      [s.name, s.id]
    end
  end

  # POST /sac_entries
  # POST /sac_entries.json
  def create
    @sac_entry = SacEntry.new(sac_entry_params)
    # set owner to current user
    @sac_entry.user_id = current_user.id

    respond_to do |format|
      if @sac_entry.save
        format.html { redirect_to @sac_entry, notice: 'Sac entry was successfully created.' }
        format.json { render :show, status: :created, location: @sac_entry }
      else
        format.html { render :new }
        format.json { render json: @sac_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sac_entries/1
  # PATCH/PUT /sac_entries/1.json
  def update
    respond_to do |format|
      if @sac_entry.update(sac_entry_params)
        format.html { redirect_to @sac_entry, notice: 'Sac entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @sac_entry }
      else
        format.html { render :edit }
        format.json { render json: @sac_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sac_entries/1
  # DELETE /sac_entries/1.json
  def destroy
    @sac_entry.destroy
    respond_to do |format|
      format.html { redirect_to sac_entries_url, notice: 'Sac entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_sac_entry
    @sac_entry = SacEntry.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def sac_entry_params
    params.require(:sac_entry).permit(:id, :description, :amount, :category_id, :date, :type_id, :recurring)
  end
end
