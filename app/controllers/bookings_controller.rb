class BookingsController < ApplicationController

    def new
        @booking = Booking.new
      end

      def create
        @booking = Booking.new(booking_params)
        if @booking.save
          # Handle successful booking, e.g., send confirmation email
          redirect_to root_path, notice: 'Booking successfully created.'
        else
          render 'new'
        end
      end
    
      private
    
      def booking_params
        params.require(:booking).permit(:name, :email, :phone, :travel_date, :message)
      end  
end
