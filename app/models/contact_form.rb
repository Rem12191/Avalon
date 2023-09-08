class ContactForm
    include ActiveModel::Model
  
    attr_accessor :name, :phone, :email, :question
  
    validates :name, presence: true
    validates :email, presence: true
    validates :question, presence: true
  end