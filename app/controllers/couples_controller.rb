class CouplesController < ApplicationController

  before_action :set_couple, only: [:show, :edit, :update, :destroy]

  def edit
    render :json => couple
  end

  def show
    render :json => couple
  end

  def create
    couple = Couple.new(couple_params)
    couple.save
    render :json => couple
  end

  def update
    couple.update(couple_params)
    render :json => couple
  end

  def destroy
    couple.destroy
    #このあとどうしよう
  end

  private
  def set_couple
    couple = Couple.find(params[:id])
  end

  def couple_params
    params.require(:couple).permit(
      :boyfriend, 
      :girlfriend, 
      :start
    )
  end
end
