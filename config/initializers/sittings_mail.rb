ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => "hazius.pavel@gmail.com",
  :password             => "1234567vV",
  :authentication       => "plain",
  :enable_starttls_auto => true
}