class Contact < ActionMailer::Base
  default_url_options[:host] = "colediamond.com"
  
  def contact_message(name, message, from)
      @name = name
      @message = message
      @from = from
      mail(:from => from, :to => "cid2105@columbia.edu", :subject => "Contact email from #{from} (#{name})")
  end
    
end
