class DiariesController < ApplicationController
  before_action :set_pin, only: [:show, :edit, :create, :update, :destroy]

  # GET /diaries/1
  # GET /diaries/1.json
  def show
    @diary = @pin.diary
  end

  # GET /diaries/1/edit
  def edit
    @diary = @pin.diary
  end

  # POST /diaries
  # POST /diaries.json
  def create
    @diary = Diary.create(diary_params)
    @pin.diary = @diary

    respond_to do |format|
      if @diary.save
        format.html { redirect_to [@pin, @diary], notice: 'Diary was successfully created.' }
        format.json { render action: 'show', status: :created, location: @diary }
      else
        format.html { render action: 'new' }
        format.json { render json: @diary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diaries/1
  # PATCH/PUT /diaries/1.json
  def update
    @diary = @pin.diary

    respond_to do |format|
      if @diary.update(diary_params)
        format.html { redirect_to [@pin, @diary], notice: 'Diary was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @diary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diaries/1
  # DELETE /diaries/1.json
  def destroy
    @diary = @pin.diary
    @diary.destroy
    respond_to do |format|
      format.html { redirect_to diaries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pin
      @pin = Pin.find(params[:pin_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diary_params
      params.require(:diary).permit(:title, :body)
    end
end
