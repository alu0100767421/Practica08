Nodo = Struct.new(:value, :siguiente, :previo)
class Nodo

	include Comparable
	def <=>(other)
		value <=> other.value
	end

end



class List
	

	
	attr_accessor :head, :tail
	 
	include Enumerable
	
	def initialize(head)
	

	   @head = head
	   @tail = head
	    
	    
	end
	
	def insert_head(nodo)
	
		
		aux = @head
		
		@head.siguiente = nodo
		@head = @head.siguiente
		@head.previo = aux
		
		
	end
	
	def insert_tail(nodo)
		
		aux = @tail
		@tail = nodo
		aux.previo = @tail
		@tail.siguiente = aux
	
	end
	
	def remove_head
	
		aux = @head
		@head = @head.previo
		return aux.value
		#puts @head.value
		
			
		
	end

	
	def print
	
		actual = @tail
		
		while actual != nil
		
			"#{actual.value}"
			actual = actual.siguiente
		
		end
		
	end
	
	def remove_tail
	
		actual = @tail
		if @tail.siguiente != nil
		@tail = @tail.siguiente
		end
		return actual.value

	
	end
	
	def each
	
	   actual = @tail
	
		while actual != nil
		   yield actual.value
		   actual = actual.siguiente
		end
	
	end

end
	
	
#	def insert_head(nodo)
	
#		@head.siguiente = nodo
#		@head.previo = @head
#		@head = @head.siguiente
	
#	end
	
#	def insert_tail(nodo)
		
#		aux = @tail
#		@tail = nodo
#		aux.previo = @tail
#		@tail.siguiente = aux
	
#	end
	
#	def insert_head(nodo)
	
#		@head.siguiente = nodo
#		@head = @head.siguiente
		 
#	end
	
#	def insert_tail(nodo)
		
#		aux = @tail
 #		@tail = nodo
#		@tail.siguiente = aux
	
#	end

#	def remove_head
	
#		aux = @head
#		@head = @head.previo
#		return aux.value	
		
#	end

	
#	def print
	
#		actual = @tail
		
#		while actual != nil
		
#			puts "#{actual.value}"
#			actual = actual.siguiente
		
#		end
		
#	end
	
#	def remove_tail
	
#		actual = @tail
#		if @tail.siguiente != nil
#		@tail = @tail.siguiente
#		end
#		return actual.value

	
#	end
	
#	def remove_head
	
#		actual = @head
#		if @head.siguiente != nil
#		@head = @head.siguiente
#		else
#		@head = @head
#		end
#		return actual.value
	
#	end

#	def initialize(nodo)
#	   @vector = []
#	   @vector.push nodo
#	end
	
#	def extr_ele  #extrae el primer elemento
#	  return @vector.shift	
#	end
	
#	def extr_ultimo_ele  #extra el último elemento
#          return @vector.pop
#	end
	
	
#	def to_s
#	 "#{@vector}"
#	end
	
#	def insert_ele(nodo)  #inserta un elemento
#		@vector.push nodo
#	end
	
#	def insert_v_ele(nodo1, nodo2, nodo3)  #inserta varios elementos
#	
#		@vector.push nodo1, nodo2, nodo3
	
#	end
	
#	def existen   #comprueba si existe
	
#		if @vector[0] != nil
#		return true
#		end
#	end
	




