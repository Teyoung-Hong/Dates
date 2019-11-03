class PlansController < ApplicationController

  before_action :set_plan, only: [:show, :edit, :update, :destroy]

  def new
    @new_plan = Plan.new
  end

  def create
    #couple = Couple.where(bf_id: current_user.id).or(Couple.where(gf_id: current_user.id))
    plan = Plan.new(plan_params) #planのnew_data
    plan.user_id = current_user.id #couple.id  #planを投稿したcouple
    if plan.save
        redirect_to plans_path
    else
        render :new
    end
  end

  def index
    @plan = Plan.all
    render :json  => @plan
  end

  def show
    respond_to do |format|
      format.html
      format.json {render :json => @plan}
    end
  end

  def edit
    respond_to do |format|
      format.html
      format.json {render :json => @plan}
    end
  end



  private
  def plan_params
      params.require(:plan).permit(:plan_name, :plan_date)
  end

  def set_plan
      @plan = Plan.find(params[:id])
  end

end
