# email:string
# password:string
# 
# password:string virtual attribute
# password_confirmation:string virtual attribute

class User < ApplicationRecord
  has_secure_password

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: 'must be a valid email address' }
end
