class SeleccionSimple
	attr_reader :pregunta, :respuesta

	
	include Comparable
	

	def initialize(pregunta,respuesta)
		@pregunta=pregunta
		@respuesta=respuesta
	end

		
	def to_s #para respuestas de 4 opciones
	
		"#{@pregunta}\n a) #{@respuesta[0]}\n b) #{@respuesta[1]}\n c) #{@respuesta[2]}\n d) #{@respuesta[3]}\n"
	end
	
	def <=>(other)
		return nil unless other.is_a?SeleccionSimple
		@pregunta.size + @respuesta.size <=> other.pregunta.size + other.respuesta.size

		
	end
	
	def ==(other)
		return nil unless other.is_a?SeleccionSimple
		@pregunta == other.pregunta
		@respuesta == other.respuesta
	end
	

end

class Verdadero_Falso < SeleccionSimple

  def initialize(pregunta)
  
  	super(pregunta, ['Cierto','Falso'])  	
  
  end
  
  def to_s
  
  	"#{@pregunta}\n a) Cierto\n b) Falso\n"
  
  end
=begin  
 def <=>(other)
		return nil unless other.instance_of?Verdadero_Falso
		@pregunta.size + @respuesta.size <=> other.pregunta.size + other.respuesta.size
		
 end
	
	def ==(other)
		return nil unless other.instance_of?Verdadero_Falso
		@pregunta == other.pregunta
		@respuesta == other.respuesta
	end
=end
end


