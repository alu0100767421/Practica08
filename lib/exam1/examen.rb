require 'exam1/SeleccionSimple'
require 'exam1/linkedlist'

class Examen 

attr_accessor :exam

	def initialize (lista_preguntas)
		@exam = lista_preguntas	
	end
	
	def respuesta_user 
	
	 puts "1): " + r1=gets.chomp
	 puts "2): " + r2=gets.chomp
	 puts "3): " + r3=gets.chomp
	 puts "4): " + r4=gets.chomp
	 puts "5): " + r5=gets.chomp
	
	@respuesta_usuario = [r1,r2,r3,r4,r5]
	
	end
	
	def vresp_user
		return @respuesta_usuario
	end
	
	def to_s
		actual = @exam.tail
		
		i=1
		while actual != nil && i < 6
		
		
	
			puts "#{i} #{actual.value}\n"
			actual = actual.siguiente
		i+=1
		
		end
		
	end
	
	def respuesta_correcta

		rcorrecta = ['b','a','c','a','a']
		
		if vresp_user != rcorrecta 
		
			puts "Hay respuestas erroneas\n\n"
		
			for i in (0..4)
		
				if vresp_user[i] != rcorrecta[i] 
					puts "Pregunta #{i+1} incorrecta "
			
				elsif vresp_user[i] == rcorrecta[i] 
					puts "Pregunta #{i+1} correcta "
				end
				
			
			end
		
		elsif vresp_user == rcorrecta 
				
				puts "Todas las respuestas son correctas\n"
			
		end
	
	end


end
