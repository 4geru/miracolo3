class SubObjsController < ApplicationController
  before_action :set_sub_obj, only: [:show, :edit, :update, :destroy]
  before_action :login
  def login
    if session[:user_id].blank?
      redirect_to user_log_
      #user = User.create
      #session[:user_id] = user.id
    end
    @user_id = session[:user_id]
  end

  # GET /sub_objs
  # GET /sub_objs.json
  def index
    @sub_objs = SubObj.all
  end

  # GET /sub_objs/1
  # GET /sub_objs/1.json
  def show
  end

  # GET /sub_objs/new
  def new
    @sub_obj = SubObj.new
  end

  # GET /sub_objs/1/edit
  def edit
  end

  # POST /sub_objs
  # POST /sub_objs.json
  def create
    @sub_obj = current_user.sub_objs.new(sub_obj_params)

    respond_to do |format|
      if @sub_obj.save
        format.html { redirect_to main_obj_path(id: current_user.main_objs.ids), notice: 'Sub obj was successfully created.' }
        format.json { render template: "/main_objs/current_user" }
      else
        format.html { render template: "/main_objs/new" }
        format.json { render json: @sub_obj.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_objs/1
  # PATCH/PUT /sub_objs/1.json
  def update
    respond_to do |format|
      if @sub_obj.update(sub_obj_params)
        format.html { redirect_to @main_obj, notice: 'Sub obj was successfully updated.' }
        format.json { render :show, status: :ok, location: @main_obj }
      else
        format.html { render :edit }
        format.json { render json: @sub_obj.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_objs/1
  # DELETE /sub_objs/1.json
  def destroy
    @sub_obj.destroy
    respond_to do |format|
      format.html { redirect_to sub_objs_url, notice: 'Sub obj was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_obj
      @sub_obj = SubObj.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_obj_params
      params.require(:sub_obj).permit(:title, :text, :limit, :main_obj_id)
    end
end
