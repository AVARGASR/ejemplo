class Ayudante < ActiveRecord::Base 

	validates_format_of :nombre, :with => /\A[a-zA-Z\s]+\z/ , allow_blank: true
	validates :nombre , :presence => {:message => "Campo obligatorio"}
	validates_format_of :apellido, :with => /\A[a-zA-Z\s]+\z/ , allow_blank: true
	validates :apellido , :presence => {:message => "Campo obligatorio"}
	validates :rut, :uniqueness => {:message => "ya ingresado anteriormente"} , allow_blank: true
	validates :rut, :presence => {:message => "Campo obligatorio"}
	validates :rut, :rut => {:message => "no es valido"} , allow_blank: true
	validates :email , :presence => {:message => "Campo obligatorio"}
	validates :email, email_format: { message: "no es correcto" } , allow_blank: true
	validates :asignatura, :presence => {:message => "tiene campo vacio"}
	validates :carrera, :presence => {:message => "tiene campo vacio"}
	
end
