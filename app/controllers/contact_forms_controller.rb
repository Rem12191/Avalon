class ContactFormsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      # Send email using the mailer
      ContactFormMailer.contact_form_submission(@contact).deliver_now
      # Set a success flash message
  flash[:success] = 'Your message has been sent successfully.'

  # Or set an error flash message
  flash[:error] = 'An error occurred while processing your request.'

  # Or set a warning flash message
  flash[:warning] = 'Please review your input before submitting.'

  redirect_to root_path # Redirect to an appropriate path
    else
      render 'new'
    end
  end
 
  private

  def contact_params
    params.require(:contact).permit(:name, :phone, :email, :question)
  end
end