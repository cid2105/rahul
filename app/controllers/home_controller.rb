class HomeController < ApplicationController

  def index
    if request.post?
        @name = params["name"]
        @from = params["email"]
        @message = params["message"]
        @mailer = Contact.contact_message(@name, @message, @from).deliver!
        @sent = true
    end 
  end
  
end
