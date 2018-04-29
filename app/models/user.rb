class User < ApplicationRecord
  # Include default devise modules. Others available are:
 #:lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

   before_save { self.email = email.downcase if email.present? }
   
   after_create :send_new_user_emails
 
   validates :email, 
                presence: true, 
                uniqueness: { case_sensitive: false }, 
                length: { minimum: 3, maximum: 254 }
   validates :password, presence: true, length: {minimum: 6}, if: "password_digest.nil?"
   validates :password, length: {minimum: 6}, allow_blank: true 
   
   private
 
   def send_new_user_emails
     user.each do |user|
       FavoriteMailer.new_user(user).deliver_now
     end
   end

end
