class User < ApplicationRecord
  # Include default devise modules. Others available are:
 #:lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

   after_create :send_new_user_emails
 
   private
 
   def send_new_user_emails
     user.each do |user|
       FavoriteMailer.new_user(user).deliver_now
     end
   end

end
