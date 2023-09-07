class Contact < ApplicationRecord
    class Contact < ApplicationRecord
        validates :name, presence: true
        validates :email, presence: true
        validates :question, presence: true
      end
end
