class Order < ActiveRecord::Base

  STATUSES = {
    0 => "Новая",
    1 => "Закрыта"
  }

  before_save { self.email = email.downcase }

  validates :name, presence: { message: "- Заполните поле 'Ваше имя'" }
  validates :quantity, presence: { message: "- Заполните поле 'Ваше имя'" }
  validates :phone, presence: { message: "- Заполните поле 'Телефон'" }
  validates :email, presence: { message: "- Заполните поле 'Email'" }
  validates :address, presence: { message: "- Заполните поле 'Адрес'" }

  validates :email, format: { with: /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/,
    message: "- введен неверно." },
    allow_blank: true

  validates :phone, length: { is: 10,
    message: "- Длина телефона должна быть равна 10 цифрам." },
    allow_blank: true

  def status_name
    STATUSES[self.status]
  end

end
