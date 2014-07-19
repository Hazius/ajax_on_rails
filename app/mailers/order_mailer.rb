class OrderMailer < ActionMailer::Base
  	default from: "from@example.com"

  	def send_email_for_user(p_order)
  		@order = p_order
  		mail(to: p_order.email, subject: "Ваш заказ принят.")
  	end

  	def send_email_for_manager(p_order)
  		@order = p_order
  		mail(to: p_order.email, subject: "Принят новый заказ.")
  	end

end
