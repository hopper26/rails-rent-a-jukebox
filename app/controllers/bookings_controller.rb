class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @item = Item.find(params[:item_id])
    @booking = Booking.new
  end

  def create
    @item = Item.find(params[:item_id])
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.item_id = @item.id
    if @booking.save
      # redirect_to bookings_path
      redirect_to item_path(@item), notice: "Booking Was Made"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to items_path, notice: "Booking Deleted"
  end

  private

  def booking_params
    params.require(:booking).permit(:comment, :start_date, :end_date)
  end
end
