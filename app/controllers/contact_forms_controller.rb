class ContactFormsController < ApplicationController
    def new
        @contact = Contact.new
    end
    
    def create
      @contact = Contact.new(contact_params)
        if @contact.save
          # Handle successful submission, e.g., send email
          redirect_to root_path, notice: 'Your message has been sent.'
        else
          render 'new'
        end
    end
    
      private
    
      def contact_params
        params.require(:contact).permit(:name, :phone, :email, :question)
      end
    
end
