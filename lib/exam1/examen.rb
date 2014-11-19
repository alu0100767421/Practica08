require 'exam1/SeleccionSimple'
require 'exam1/linkedlist'

class Examen 

attr_accessor :exam, :respuesta_usuario, :rcorrecta, :correctaP

	def initialize (lista_preguntas)
		@exam = lista_preguntas	
		@respuesta_usuario=[nil,nil,nil,nil,nil]
		@rcorrecta = ['b','a','c','a','a']
		@correctaP=0
	end
	
	def respuesta_user 
	
	puts "Introduce las opciones de respuesta: "
	
=begin
	 puts "1): " + r1=gets.chomp
	 puts "2): " + r2=gets.chomp
	 puts "3): " + r3=gets.chomp
	 puts "4): " + r4=gets.chomp
	 puts "5): " + r5=gets.chomp
=end
	
#	@respuesta_usuario = [r1,r2,r3,r4,r5]
	@respuesta_usuario = [gets.chomp,gets.chomp,gets.chomp,gets.chomp,gets.chomp]
	
	end
	
	def vresp_user
		return @respuesta_usuario
	end
	
	def correcta(ans_usuario,numero_preg)
	
		if ans_usuario == @rcorrecta[numero_preg] then
		
			puts "Pregunta #{numero_preg+1}: Respuesta correcta"
			@correctaP+=1
			true
		
		else
			puts "Pregunta #{numero_preg+1}: Respuesta incorrecta"
			false
		
		end
		
	end

	def calificacion

		if @correctaP >= 3 then
			puts "Calificación: Aprobado"
			true
		else
			puts "Calificación: Suspendido"
			false
		end

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
	
	


end


class Interfaz

attr_accessor :interfaz, :correctaP

def initialize (examen)

	@interfaz = examen
	@correctaP = 0

end

def to_s

	@interfaz.to_s
		
end

def correcta(ans_usuario,numero_preg)
	
		if ans_usuario == @interfaz.rcorrecta[numero_preg] then
		
			puts "Pregunta #{numero_preg+1}: Respuesta correcta"
			@correctaP+=1
			true
		
		else
			puts "Pregunta #{numero_preg+1}: Respuesta incorrecta"
			false
		
		end
end

def respuesta_correcta

		
		if @interfaz.respuesta_usuario != @interfaz.rcorrecta 
		
			puts "Hay respuestas erroneas\n\n"
		
			for i in (0..4)
		
				if @interfaz.respuesta_usuario[i] != @interfaz.rcorrecta[i] 
					puts "Pregunta #{i+1} incorrecta "
			
				elsif @interfaz.respuesta_usuario[i] == @interfaz.rcorrecta[i] 
					puts "Pregunta #{i+1} correcta "
				end
				
			
			end
		
		elsif vresp_user == rcorrecta 
				
				puts "Todas las respuestas son correctas\n"
			
		end

end

def calificacion

		if @correctaP >= 3 then
			puts "Calificación: Aprobado"
			true
		else
			puts "Calificación: Suspendido"
			false
		end
end



end
