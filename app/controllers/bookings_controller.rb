class BookingsController < ApplicationController
  def new
    @property = Property.find params[:property_id]
    @booking = Booking.new
  end

  def index
    @booking = Booking.all
  end

  def create
    property =  Property.find params[:property_id]
    property.bookings.create booking_params
    redirect_to property

    
    # @bookings = Booking.all
    # # Check for bookings valid or not
    # @bookings.each do |b|
    #   puts "#{b}"
    # end
    # binding.pry
  end

  def destroy
  end

  def show
    @booking = Booking.find params[:id]
  end

  private
  def booking_params
    params.require(:booking).permit(:check_in, :check_out)
  end


end
