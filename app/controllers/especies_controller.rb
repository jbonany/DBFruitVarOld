class EspeciesController < ApplicationController
  # GET /especies
  # GET /especies.json
  def index
    @especies = Especy.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @especies }
    end
  end

  # GET /especies/1
  # GET /especies/1.json
  def show
    @especy = Especy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @especy }
    end
  end

  # GET /especies/new
  # GET /especies/new.json
  def new
    @especy = Especy.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @especy }
    end
  end

  # GET /especies/1/edit
  def edit
    @especy = Especy.find(params[:id])
  end

  # POST /especies
  # POST /especies.json
  def create
    @especy = Especy.new(params[:especy])

    respond_to do |format|
      if @especy.save
        format.html { redirect_to @especy, notice: 'Especy was successfully created.' }
        format.json { render json: @especy, status: :created, location: @especy }
      else
        format.html { render action: "new" }
        format.json { render json: @especy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /especies/1
  # PUT /especies/1.json
  def update
    @especy = Especy.find(params[:id])

    respond_to do |format|
      if @especy.update_attributes(params[:especy])
        format.html { redirect_to @especy, notice: 'Especy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @especy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /especies/1
  # DELETE /especies/1.json
  def destroy
    @especy = Especy.find(params[:id])
    @especy.destroy

    respond_to do |format|
      format.html { redirect_to especies_url }
      format.json { head :no_content }
    end
  end
end
