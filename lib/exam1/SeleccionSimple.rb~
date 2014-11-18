class SeleccionSimple
	attr_reader :pregunta, :respuesta, :nivel, :rescorr

	
	include Comparable
	

	def initialize(pregunta,respuesta,nivel,rescorr)
		@pregunta=pregunta
		@respuesta=respuesta
		@nivel=nivel
		@rescorr=rescorr
	end

		
	def to_s #para respuestas de 4 opciones
	
		"#{@pregunta}\n a) #{@respuesta[0]}\n b) #{@respuesta[1]}\n c) #{@respuesta[2]}\n d) #{@respuesta[3]}\n"
	end
	
	def <=>(other)
=begin	
		for i in (0..3)
			respuesta_size += @respuesta[i].size
			respuesta_other_size += other.respuesta[i].size
		end
=end
	
		return nil unless other.is_a?SeleccionSimple
		@nivel  <=> other.nivel
		#@pregunta.size + respuesta_size <=> other.pregunta.size + respuesta_other_size
		
		
	end
	
	def ==(other)
		
		return nil unless other.is_a?SeleccionSimple
		if @nivel == other.nivel
		@respuesta == other.respuesta
		end
	
		#return nil unless other.is_a?SeleccionSimple
		@pregunta == other.pregunta

	end
=begin	
	def <=(other)
	
		
	
		@pregunta.size < 	
	end
	
=end
end

class Verdadero_Falso < SeleccionSimple

  def initialize(pregunta,nivel,rescorr)
  
  	super(pregunta, ['Cierto','Falso'],nivel,rescorr)  	
  
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


