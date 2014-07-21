class OrderMailer < ActionMailer::Base
  	default from: "store"
    extend Sidekiq::Mailer
    
  	def send_email_for_user(p_order)
  		@order = p_order  		
  		mail(to: p_order.email, subject: "Ваш заказ принят.")
  	end

  	def send_email_for_manager(p_email_manager, p_order)
  		@order = p_order  				
  		attachments["order.docx"] = get_order_docx(p_order)
  		mail(to: p_email_manager, subject: "Принят новый заказ.")
  	end

  	private

  		def get_order_docx(p_order)
  			fileName_docx = "send_email_for_manager.docx"
  			filePath = "app/views/order_mailer/" + fileName_docx
  			buffer = DocxTemplater.new
  					.replace_file_with_content(filePath,
  						{ 	id: p_order.id,
  							name: p_order.name,  							
  							quantity: p_order.quantity,
  							address: p_order.address,
  							phone: p_order.phone,
  							created_at: p_order.created_at.strftime("%d.%m.%y")
  						})
  			buffer.string
  		end

end
