class MainObjsController < ApplicationController
  before_action :set_main_obj, only: [:show, :edit, :update, :destroy]
  before_action :logged_in?
  
  def login
    if session[:user_id].blank?
      redirect_to login_path
      #user = User.create
      #session[:user_id] = user.id
    end
    @user_id = session[:user_id]
  end

  # GET /main_objs
  # GET /main_objs.json
  def index
    @main_objs = MainObj.all
  end

  # GET /main_objs/1
  # GET /main_objs/1.json
  def show
  end

  # GET /main_objs/new
  def new
    @main_obj = MainObj.new
  end

  # GET /main_objs/1/edit
  def edit
  end

  # POST /main_objs
  # POST /main_objs.json
  def create
    @main_obj = current_user.main_objs.new(main_obj_params)

    respond_to do |format|
      if @main_obj.save
        format.html { redirect_to @main_obj, notice: 'Main obj was successfully created.' }
        format.json { render :show, status: :created, location: @main_obj }
      else
        format.html { render :new }
        format.json { render json: @main_obj.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /main_objs/1
  # PATCH/PUT /main_objs/1.json
  def update
    respond_to do |format|
      if @main_obj.update(main_obj_params)
        format.html { redirect_to @main_obj, notice: 'Main obj was successfully updated.' }
        format.json { render :show, status: :ok, location: @main_obj }
      else
        format.html { render :edit }
        format.json { render json: @main_obj.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /main_objs/1
  # DELETE /main_objs/1.json
  def destroy
    @main_obj.destroy
    respond_to do |format|
      format.html { redirect_to main_objs_url, notice: 'Main obj was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_main_obj
      @main_obj = MainObj.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def main_obj_params
      params.require(:main_obj).permit(:title, :text, :limit, :user_id)
    end
end
