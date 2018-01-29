class BookingsController < ApplicationController
  def new
    @property = Property.find params[:property_id]
    @booking = Booking.new
      if !(@current_user.present?)
        flash[:error] = "Please Login to make a booking"
        redirect_to login_path and return
      end # if user not logged in
  end

  def index
    @booking = Booking.all
  end

  def create
  property =  Property.find params[:property_id]
  prev_bookings = property.bookings
  # Check if user is logged in


  if Date.parse(booking_params[:check_out]) < Date.parse(booking_params[:check_in])
    # Error> check_out date cant be before check_in date
    flash[:error] = "check_out date cant be before check_in date"
    redirect_to new_property_booking_path
  else
    # # Current checkin and checkout dates
    curr_checkin_date  = Date.parse(booking_params[:check_in])
    curr_checkout_date = Date.parse(booking_params[:check_out])

    curr_booking_arr = (curr_checkin_date..curr_checkout_date).to_a
    if(prev_bookings.length == 0)
      b = property.bookings.create booking_params
      @current_user.bookings << b
      redirect_to property_path property and return

    else
    # Previous checkin and checkout dates
    prev_bookings.each do |cb|
      prev_checkin_date  = Date.parse(cb[:check_in])
      prev_checkout_date = Date.parse(cb[:check_out])
      prev_booking_arr = (prev_checkin_date..prev_checkout_date).to_a

      # check if previous bookings' dates have common dates with previous bookings
      if (curr_booking_arr & prev_booking_arr).length > 0
        # error -> Dates co-incides with previous booking
        flash[:error] = "Dates co-incides with previous booking"
        # Redirect to booking form AND return, which exits loop
        redirect_to new_property_booking_path and return
      end

    end # .each

      # If we didn't redirect to the error page before now (in the each loop),
      # it's safe to add the booking, i.e. no overlap
      # valid bookings - create the property
      b = property.bookings.create booking_params
      @current_user.bookings << b
      redirect_to property_path property #and return

    end
  end # if - else




  end #create



  def destroy

    if !(@current_user.present?)
      flash[:error] = "Please Login to make/delet this booking"
      redirect_to login_path and return
    end

    booking   = Booking.find params[:id]
    if @current_user == booking.user
      property =  Property.find params[:property_id]
      booking = Booking.find params[:id]
      booking.destroy
      redirect_to property
    else
      flash[:error] = "Please Login to make/delet this booking"
      redirect_to login_path and return
    end

  end

  def show
    @booking = Booking.find params[:id]
  end

  private
  def booking_params
    params.require(:booking).permit(:check_in, :check_out)
  end


end
