class Contact < MailForm::Base
	

	attribute :nombre
	attribute :email
	attribute :mensaje

	validates_format_of :nombre, :with => /\A[a-zA-Z\s]+\z/ , allow_blank: true
	validates :nombre , :presence => {:message => "Campo obligatorio"}
	validates :email , :presence => {:message => "Campo obligatorio"}
	validates :email, email_format: { message: "no es correcto" } , allow_blank: true
	validates :mensaje , :presence => {:message => "Campo obligatorio"}

	def headers 
	{
	   	:subject => "Contact Form",
	   	:to => "ariielo23@hotmail.com",
		:from => %("#{nombre}" <#{email}>)
    }
    end

end