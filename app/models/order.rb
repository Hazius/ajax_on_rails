class Order < ActiveRecord::Base

	before_save { self.email = email.downcase }

	validates :quantity, :name, :phone, :email, :address, 
		presence: { massage: "Не все поля заполнены." }

	validates :email, format: { with: /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/,
		massage: "Email введен неверно." }

	validates :phone, length: { is: 10,
		massage: "Длина телефона должна быть равна 10 цифрам." }

end
