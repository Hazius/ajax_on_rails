class Manager < ActiveRecord::Base

	before_save { self.email = email.downcase }

	validates :name, presence: { message: "- Заполните поле 'Имя'" }
	validates :email, presence: { message: "- Заполните поле 'Email'" }

	validates :email, format: { with: /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/,
		message: "- введен неверно." }, 
		allow_blank: true

end
