class FavoriteMailer < ApplicationMailer
    default from: "cromano31415@gmail.com"

    def new_user(user)
        
        @user = user 
        mail(to: user.email, subject: "Welcome to Mathpedia #{user.email}")
    end 
end
