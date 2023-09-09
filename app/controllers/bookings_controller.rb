class BookingsController < ApplicationController

    def new
        @booking = Booking.new
      end

      def create
        @booking = Booking.new(booking_params)
    
        if @booking.save
          # Handle successful creation and redirection
          # Set a success flash message
  flash[:success] = 'Your message has been sent successfully.'

  # Or set an error flash message
  flash[:error] = 'An error occurred while processing your request.'

  # Or set a warning flash message
  flash[:warning] = 'Please review your input before submitting.'

  redirect_to root_path # Redirect to an appropriate path
        else
          # Handle errors and re-render the form
          render 'new'
        end
      end
     

      private
    
      def booking_params
        params.require(:booking).permit(:name, :email, :phone, :travel_date, :message)
      end  
end
