require 'spec_helper'
require 'exam1'


##INICIALIZAMOS CADA UNA DE LAS PREGUNTAS CON SUS RESPECTIVAS RESPUESTAS

describe SeleccionSimple do
  before :each do
 
  @p1 = SeleccionSimple.new("¿Cual es la salida del siguiente codigo Ruby?\n
class Xyz
  def pots
   @nice
  end
end

xyz = Xyz.new
p xyz.pots", ['#<Xyz:0xa000208>','nil',0,'Ninguna de las anteriores'])

 @p2 = Verdadero_Falso.new("La siguiente definicion de un hash en Ruby es valida:\n
hash_raro = {\n
  [1, 2, 3] => Object.new(),
  Hash.new => :toto\n
}")

 @p3 = SeleccionSimple.new("¿Cual es la salida del siguiente codigo Ruby?\n
class Array
 def say_hi
  HEY!
 end
end
p [1, bob].say_hi", [1,'bob','HEY!','Ninguna de las anteriores'])

 @p4 = SeleccionSimple.new("¿Cual es el tipo del objeto en el siguiente codigo Ruby?\n
class Objeto\n
end", ['Una instancia de la clase Class','Una constante','Un objeto','Ninguna de las anteriores'])

 @p5 = Verdadero_Falso.new("Es apropiado que una clase Tablero herede de una clase Juego")
 end
 
 ##FIN DE LA INICIALIZACION
 
 ##EXISTENCIA DE LAS PREGUNTAS

  describe "#Simple_Selection" do
    it ":Debe existir una pregunta" do
	expect(@p1.class).to eq(SeleccionSimple)

	expect(@p2.class).to eq(Verdadero_Falso)

	expect(@p3.class).to eq(SeleccionSimple)

	expect(@p4.class).to eq(SeleccionSimple)

	expect(@p5.class).to eq(Verdadero_Falso)
    end
  
  
  ##FIN PREGUNTAS
  
  ##EXISTENCIA DE LAS RESPUESTAS

  
    it ":Deben existir opciones de respuesta" do
	expect(@p1.respuesta).to eq(['#<Xyz:0xa000208>','nil',0,'Ninguna de las anteriores'])
	expect(@p2.respuesta).to eq(['Cierto','Falso'])
	expect(@p3.respuesta).to eq([1,'bob','HEY!','Ninguna de las anteriores'])
	expect(@p4.respuesta).to eq(['Una instancia de la clase Class','Una constante','Un objeto','Ninguna de las anteriores'])
	expect(@p5.respuesta).to eq(['Cierto','Falso'])
    end
  
  
  ##FIN RESPUESTAS
  
  
    it ":Se debe invocar un método para obtener la pregunta" do
    	
    	expect(@p1.pregunta).to eq("¿Cual es la salida del siguiente codigo Ruby?\n
class Xyz
  def pots
   @nice
  end
end

xyz = Xyz.new
p xyz.pots")

	
	expect(@p2.pregunta).to eq("La siguiente definicion de un hash en Ruby es valida:\n
hash_raro = {\n
  [1, 2, 3] => Object.new(),
  Hash.new => :toto\n
}")

	
	expect(@p3.pregunta).to eq("¿Cual es la salida del siguiente codigo Ruby?\n
class Array
 def say_hi
  HEY!
 end
end
p [1, bob].say_hi")

	
	expect(@p4.pregunta).to eq("¿Cual es el tipo del objeto en el siguiente codigo Ruby?\n
class Objeto\n
end")	

	
	expect(@p5.pregunta).to eq("Es apropiado que una clase Tablero herede de una clase Juego")
    end
  
  
 
    it ":Se debe invocar un método para obtener las opciones de respuesta" do
    	
    	expect(@p1.respuesta[0]).to eq('#<Xyz:0xa000208>')
    	expect(@p2.respuesta[0]).to eq('Cierto')
    	expect(@p3.respuesta[0]).to eq(1)
    	expect(@p4.respuesta[0]).to eq('Una instancia de la clase Class')
    	expect(@p5.respuesta[0]).to eq('Cierto')
    	
    
    	expect(@p1.respuesta[1]).to eq('nil')
    	expect(@p2.respuesta[1]).to eq('Falso')
    	expect(@p3.respuesta[1]).to eq('bob')
    	expect(@p4.respuesta[1]).to eq('Una constante')
    	expect(@p5.respuesta[1]).to eq('Falso')
    
    	expect(@p1.respuesta[2]).to eq(0)
    	expect(@p3.respuesta[2]).to eq('HEY!')
    	expect(@p4.respuesta[2]).to eq('Un objeto')

    
    	expect(@p1.respuesta[3]).to eq('Ninguna de las anteriores')
    	expect(@p3.respuesta[3]).to eq('Ninguna de las anteriores')
    	expect(@p4.respuesta[3]).to eq('Ninguna de las anteriores')
    end
  
  
    ##FORMATEADO POR PANTALLA
  
  
    
    it ":Se deben mostrar por consola formateada la pregunta y las opciones de respuesta" do
       
       expect(@p1.to_s).to eq("¿Cual es la salida del siguiente codigo Ruby?\n
class Xyz
  def pots
   @nice
  end
end

xyz = Xyz.new
p xyz.pots\n a) #<Xyz:0xa000208>\n b) nil\n c) 0\n d) Ninguna de las anteriores\n")

	expect(@p2.to_s).to eq("La siguiente definicion de un hash en Ruby es valida:\n
hash_raro = {\n
  [1, 2, 3] => Object.new(),
  Hash.new => :toto\n
}\n a) Cierto\n b) Falso\n")

	expect(@p3.to_s).to eq("¿Cual es la salida del siguiente codigo Ruby?\n
class Array
 def say_hi
  HEY!
 end
end
p [1, ""bob""].say_hi\n a) 1\n b) bob\n c) HEY!\n d) Ninguna de las anteriores\n")

	expect(@p4.to_s).to eq("¿Cual es el tipo del objeto en el siguiente codigo Ruby?\n
class Objeto\n
end\n a) Una instancia de la clase Class\n b) Una constante\n c) Un objeto\n d) Ninguna de las anteriores\n")

	expect(@p5.to_s).to eq("Es apropiado que una clase Tablero herede de una clase Juego\n a) Cierto\n b) Falso\n")
    end
  
 end
  
  

  
  
  describe List do
    before :each do
    
      @nodo1 = Nodo.new(@p1)
      @nodo2 = Nodo.new(@p2)
      @nodo3 = Nodo.new(@p3)
      @nodo4 = Nodo.new(@p4)
      @nodo5 = Nodo.new(@p5)

    
      @lista = List.new(@nodo1)
    
    end
  
  
    describe "Nodo" do
   
    it "#Debe existir un Nodo de la lista con sus datos y su siguiente" do
     
      expect(@nodo1.class).to eq(Nodo)
      
     # @lista).to_not eq(nil)
     #@lista.extr_ele.class).to eq(Nodo)
    
    end   
   end
   
   describe "List" do
     it "#Se extrae el primer elemento de la lista" do
     
      expect(@lista.remove_tail).to eq(@nodo1.value)
     
     end
     
    it "#Se puede insertar un elemento" do
     
     	     
     	@lista.insert_head(@nodo2)
     	expect(@lista.remove_head).to eq(@nodo2.value)
     	
     end
     
    it "#Se pueden insertar varios elementos" do
    
     
     @lista.insert_head(@nodo3)
     @lista.insert_head(@nodo5)
     @lista.insert_tail(@nodo4)
     expect(@lista.remove_tail).to eq(@nodo4.value)
     expect(@lista.remove_head).to eq(@nodo5.value)
     expect(@lista.remove_head).to eq(@nodo3.value)
    
     
   end
   
    it "#Debe existir una lista con su cabeza" do
      
      expect(@lista.head.class).to eq(Nodo)
    
    end
    
  end
  
  
  
  
  
  end
  

  end
  

  
  
