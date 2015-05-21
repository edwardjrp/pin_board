class PinsController < ApplicationController
  before_action :find_pin, only: [:show, :edit, :update, :destroy]

  def index
    @pins = Pin.all.order('created_at DESC')
  end

  def show
  end

  def new
    #@pin = Pin.new #This was before added authentication and relationship with devise
    @pin = current_user.pins.build
  end

  def create
    #@pin = Pin.new(pin_params)
    @pin = current_user.pins.build(pin_params) #This was before added authentication and relationship with devise

    if @pin.save
      redirect_to @pin, notice: 'Successfully created new pin.'
    else
      render 'new'
    end

  end

  def edit
  end

  def update

    if @pin.update(pin_params)
      redirect_to @pin, notice: 'Pin was successfully updated.'
    else
      render 'edit'
    end
    
  end

  def destroy
    @pin.destroy
    redirect_to root_path
  end

  private

  def pin_params
    params.require(:pin).permit(:title, :description, :image)
  end

  def find_pin
    @pin = Pin.find(params[:id])
  end

end
